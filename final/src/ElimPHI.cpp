#include "ElimPHI.h"

// 全局变量，用于存储待释放的PHI指令
static std::set<Instruction*> freeList;

void ElimPHI::pass() {
    // 获取所有函数列表
    auto functions = std::vector<Function*>(unit->begin(), unit->end());

    // 遍历每个函数
    for (auto func : functions) {
        // 存储分裂出的基本块中的指令
        std::map<BasicBlock*, std::vector<Instruction*>> pcopy;

        // 获取当前函数的基本块列表
        auto blocks = std::vector<BasicBlock*>(func->begin(), func->end());

        // 遍历每个基本块，执行Critical Edge Splitting算法
        for (auto bb : blocks) {
            // 如果当前基本块的第一条指令不是PHI指令，则跳过
            if (!bb->begin()->isPHI())
                continue;

            auto preds =
                std::vector<BasicBlock*>(bb->pred_begin(), bb->pred_end());

            // 遍历基本块的前驱
            for (auto pred : preds) {
                // 分裂
                if (pred->getNumOfSucc() > 1) {
                    BasicBlock* splitBlock = new BasicBlock(func);

                    // 分裂前驱的条件跳转指令
                    CondBrInstruction* branch =
                        dynamic_cast<CondBrInstruction*>(pred->rbegin());
                    if (branch->getTrueBranch() == bb)
                        branch->setTrueBranch(splitBlock);
                    else
                        branch->setFalseBranch(splitBlock);

                    // 更新前驱和后继关系
                    pred->addSucc(splitBlock);
                    pred->removeSucc(bb);
                    splitBlock->addPred(pred);

                    // 在新的基本块中添加无条件跳转指令
                    new UncondBrInstruction(bb, splitBlock);
                    splitBlock->addSucc(bb);
                    bb->addPred(splitBlock);

                    // 处理PHI指令，生成新的指令并添加到pcopy中
                    for (auto i = bb->begin(); i != bb->end() && i->isPHI();
                         i = i->getNext()) {
                        auto def = i->getDef()[0];
                        auto src =
                            dynamic_cast<PhiInstruction*>(i)->getSrcs()[pred];
                        src->removeUse(i);
                        pcopy[splitBlock].push_back(new BinaryInstruction(
                            BinaryInstruction::ADD, def, src,
                            new Operand(new ConstantSymbolEntry(
                                Var2Const(def->getType()), 0))));
                        freeList.insert(i);
                    }
                }
                // 不分裂，直接处理PHI指令
                else {
                    for (auto i = bb->begin(); i != bb->end() && i->isPHI();
                         i = i->getNext()) {
                        auto def = i->getDef()[0];
                        auto src =
                            dynamic_cast<PhiInstruction*>(i)->getSrcs()[pred];
                        src->removeUse(i);
                        pcopy[pred].push_back(new BinaryInstruction(
                            BinaryInstruction::ADD, def, src,
                            new Operand(new ConstantSymbolEntry(
                                Var2Const(def->getType()), 0))));
                        freeList.insert(i);
                    }
                }
            }

            // 释放指令
            for (auto i : freeList)
                i->getParent()->remove(i);
        }

        // 用于替换并行复制的顺序复制操作
        for (auto kv : pcopy) {
            auto block = kv.first;
            auto& restInsts = kv.second;

            std::vector<Instruction*> seq;
            auto insts = restInsts;

            for (auto inst : insts) {
                // 删除类似 a <- a 的指令
                if (inst->getDef()[0] == inst->getUses()[0])
                    restInsts.erase(
                        std::find(restInsts.begin(), restInsts.end(), inst));
            }

            while (restInsts.size()) {
                std::set<Operand*> uses;
                for (auto inst : restInsts)
                    uses.insert(inst->getUses()[0]);

                bool found = false;
                auto Insts = restInsts;

                for (auto inst : Insts) {
                    // 找到不在pcopy范围内的指令
                    if (uses.count(inst->getDef()[0]) == 0) {
                        seq.push_back(inst);
                        restInsts.erase(std::find(restInsts.begin(),
                                                  restInsts.end(), inst));
                        found = true;
                    }
                }

                // 如果没有找到，则从pcopy中断开一个循环
                if (!found) {
                    auto freshOp = new Operand(new TemporarySymbolEntry(
                        restInsts[0]->getUses()[0]->getType(),
                        SymbolTable::getLabel()));
                    seq.push_back(new BinaryInstruction(
                        BinaryInstruction::ADD, freshOp,
                        restInsts[0]->getUses()[0],
                        new Operand(new ConstantSymbolEntry(
                            Var2Const(freshOp->getType()), 0))));
                    restInsts[0]->getUses()[0] = freshOp;
                }
            }

            // 将顺序复制操作添加到基本块中
            for (auto inst : seq)
                block->insertBefore(inst, block->rbegin());  // 跳过branch指令
        }
    }
}
