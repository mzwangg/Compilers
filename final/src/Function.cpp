#include "Function.h"
#include "Unit.h"
#include "Type.h"
#include <list>

extern FILE* yyout;

Function::Function(Unit *u, SymbolEntry *s)
{
    u->insertFunc(this);
    entry = new BasicBlock(this);
    sym_ptr = s;
    parent = u;
}

Function::~Function()
{
    auto delete_list = block_list;
    for (auto &i : delete_list)
        delete i;
    parent->removeFunc(this);
}

// remove the basicblock bb from its block_list.
void Function::remove(BasicBlock *bb)
{
    block_list.erase(std::find(block_list.begin(), block_list.end(), bb));
}


void Function::genMachineCode(AsmBuilder* builder) 
{
    //获得当前翻译单元
    auto cur_unit = builder->getUnit();
    //创建一个函数块，其parent为当前块
    auto cur_func = new MachineFunction(cur_unit, this->sym_ptr);

    builder->setFunction(cur_func);

    //将基本块和代码块建立映射
    std::map<BasicBlock*, MachineBlock*> map;

    //对每个block进行代码生成
    for(auto block : block_list)
    {
        block->genMachineCode(builder);
        map[block] = builder->getBlock();
    }

    // Add pred and succ for every block
    for(auto block : block_list)
    {
        //设置block的前驱后继
        auto mblock = map[block];
        for (auto pred = block->pred_begin(); pred != block->pred_end(); pred++)
            mblock->addPred(map[*pred]);
        for (auto succ = block->succ_begin(); succ != block->succ_end(); succ++)
            mblock->addSucc(map[*succ]);
    }
    //将函数插入当前翻译单元
    cur_func->addSavedRegs(11); // fp
    cur_unit->insertFunc(cur_func);
}

void Function::output() const
{
    FunctionType* funcType = dynamic_cast<FunctionType*>(sym_ptr->getType());
    Type *retType = funcType->getRetType();

    fprintf(yyout, "define dso_local %s %s(", retType->toStr().c_str(), sym_ptr->toStr().c_str());
    for (auto it = param_list.begin(); it != param_list.end(); it++)
    {
        if (it != param_list.begin())
            fprintf(yyout, ", ");
        fprintf(yyout, "%s %s", (*it)->getType()->toStr().c_str(), (*it)->getEntry()->toStr().c_str());
    }
    fprintf(yyout, ") #0{\n");

    std::set<BasicBlock *> v;
    std::list<BasicBlock *> q;
    q.push_back(entry);
    v.insert(entry);
    while (!q.empty())
    {
        auto bb = q.front();
        q.pop_front();
        bb->output();
        for (auto succ = bb->succ_begin(); succ != bb->succ_end(); succ++)
        {
            if (v.find(*succ) == v.end())
            {
                v.insert(*succ);
                q.push_back(*succ);
            }
        }
    }
    fprintf(yyout, "}\n");
}
