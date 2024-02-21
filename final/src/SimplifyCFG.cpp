#include "SimplifyCFG.h"
#include <queue>
#include "Type.h"

// 1) 删除不可达的基本块。
// 2) 如果仅有一个前驱且该前驱仅有一个后继，将基本块与前驱合并。
// 3) 消除空的基本块和仅包含无条件分支的基本块。
void SimplifyCFG::pass() {
    // 获取所有函数
    auto Funcs = std::vector<Function*>(unit->begin(), unit->end());

    // 遍历每个函数
    for (auto func : Funcs) {
        // BFS遍历基本块
        std::map<BasicBlock*, bool> is_visited;
        for (auto bb : func->getBlockList())
            is_visited[bb] = false;

        std::queue<BasicBlock*> q;
        q.push(func->getEntry());
        is_visited[func->getEntry()] = true;

        while (!q.empty()) {
            auto bb = q.front();
            std::vector<BasicBlock*> preds(bb->pred_begin(), bb->pred_end());
            std::vector<BasicBlock*> succs(bb->succ_begin(), bb->succ_end());

            // 消除空的基本块，比如某些end_bb
            // 当bb为空且不是函数的开始块时
            if (bb->empty() && bb != func->getEntry()) {
                // 对于每个前驱基本块
                for (auto pred : preds) {
                    auto lastInst = pred->rbegin();

                    // 移除前驱基本块的最后一条指令
                    pred->remove(lastInst);

                    // 如果最后一条指令是条件分支
                    if (lastInst->isCond()) {
                        CondBrInstruction* branch =
                            dynamic_cast<CondBrInstruction*>(lastInst);

                        // 根据条件分支的目标基本块，生成一个无条件跳转指令
                        if (branch->getTrueBranch() == bb)
                            new UncondBrInstruction(branch->getFalseBranch(),
                                                    pred);
                        else
                            new UncondBrInstruction(branch->getTrueBranch(),
                                                    pred);
                    }

                    // 移除前驱基本块对当前基本块的后继关系
                    pred->removeSucc(bb);
                }

                // 从函数中移除当前基本块
                func->remove(bb);
            }

            // 消除仅包含无条件分支的基本块。
            else if (bb->begin()->getNext() == bb->end() &&
                     bb->begin()->isUncond()) {
                // 如果当前基本块是函数入口且目标基本块有前驱，不进行消除
                if (bb == func->getEntry() && succs[0]->getNumOfPred())
                    goto NEXT;

                // 移除目标基本块对当前基本块的前驱关系
                succs[0]->removePred(bb);

                // 对于每个前驱基本块
                for (auto pred : preds) {
                    // 移除前驱基本块对当前基本块的后继关系
                    pred->removeSucc(bb);
                    auto lastInst = pred->rbegin();

                    // 如果最后一条指令是条件分支
                    if (lastInst->isCond()) {
                        CondBrInstruction* branch =
                            dynamic_cast<CondBrInstruction*>(lastInst);

                        // 根据条件分支的目标基本块，更新条件分支的目标
                        if (branch->getTrueBranch() == bb)
                            branch->setTrueBranch(succs[0]);
                        else
                            branch->setFalseBranch(succs[0]);

                        // 如果条件分支的两个目标相同，说明可以合并为无条件跳转
                        if (branch->getTrueBranch() ==
                            branch->getFalseBranch()) {
                            // 移除条件分支指令
                            pred->remove(lastInst);
                            // 生成无条件跳转指令
                            new UncondBrInstruction(branch->getTrueBranch(),
                                                    pred);
                        }
                    } else {
                        // 移除无条件跳转指令
                        pred->remove(lastInst);
                        // 生成新的无条件跳转指令
                        new UncondBrInstruction(succs[0], pred);
                    }

                    // 更新前驱基本块与目标基本块的控制流关系
                    pred->addSucc(succs[0]);
                    succs[0]->addPred(pred);
                }

                // 如果当前基本块是函数入口，更新函数入口为目标基本块
                if (bb == func->getEntry())
                    func->setEntry(succs[0]);

                // 从函数中移除当前基本块
                func->remove(bb);
            }

            // 如果仅有一个前驱且该前驱仅有一个后继，将基本块与前驱合并
            else if (bb->getNumOfPred() == 1 &&
                     (*(bb->pred_begin()))->getNumOfSucc() == 1 &&
                     bb != func->getEntry()) {
                auto pred = *(bb->pred_begin());
                pred->removeSucc(bb);
                auto lastInst = pred->rbegin();

                // 移除前驱基本块的最后一条指令
                pred->remove(lastInst);

                // 将当前基本块的后继基本块添加到前驱基本块的后继中
                for (auto succ : succs)
                    pred->addSucc(succ);

                auto insts = std::vector<Instruction*>();

                // 将当前基本块的指令加入到前驱基本块中
                for (auto inst = bb->begin(); inst != bb->end();
                     inst = inst->getNext())
                    insts.push_back(inst);

                for (auto inst : insts) {
                    bb->remove(inst);
                    pred->insertBefore(inst, pred->end());
                }

                // 更新后继基本块的前驱为前驱基本块
                for (auto succ : succs) {
                    succ->removePred(bb);
                    succ->addPred(pred);
                }

                // 从函数中移除当前基本块
                func->remove(bb);
            }

        NEXT:
            q.pop();
            for (auto succ : succs) {
                if (!is_visited[succ]) {
                    q.push(succ);
                    is_visited[succ] = true;
                }
            }
        }

        // 删除不可达的基本块。
        auto blocks = func->getBlockList();
        for (auto bb : blocks) {
            if (!is_visited[bb]) {
                func->remove(bb);

                // 移除当前基本块的前驱关系
                std::vector<BasicBlock*> preds(bb->pred_begin(),
                                               bb->pred_end());
                for (auto pred : preds)
                    pred->removeSucc(bb);

                // 移除当前基本块的后继关系
                std::vector<BasicBlock*> succs(bb->succ_begin(),
                                               bb->succ_end());
                for (auto succ : succs)
                    succ->removePred(bb);
            }
        }
    }
}
