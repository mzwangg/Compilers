#include <algorithm>
#include "LinearScan.h"
#include "MachineCode.h"
#include "LiveVariableAnalysis.h"

LinearScan::LinearScan(MachineUnit *unit)
{
    this->unit = unit;
    for (int i = 4; i < 11; i++)
        rregs.push_back(i);
    for (int i = 5; i < 32; i++)
        sregs.push_back(i);
}

void LinearScan::allocateRegisters()
{
    for (auto &f : unit->getFuncs())
    {
        func = f;
        bool success;
        success = false;
        while (!success)        // repeat until all vregs can be mapped
        {
            computeLiveIntervals();
            success = linearScanRegisterAllocation();
            if (success)        // all vregs can be mapped to real regs
                modifyCode();
            else                // spill vregs that can't be mapped to real regs
                genSpillCode();
        }
    }
}

void LinearScan::makeDuChains()
{
    LiveVariableAnalysis lva;
    lva.pass(func);
    du_chains.clear();
    int i = 0;
    std::map<MachineOperand, std::set<MachineOperand *>> liveVar;
    for (auto &bb : func->getBlocks())
    {
        liveVar.clear();
        for (auto &t : bb->getLiveOut())
            liveVar[*t].insert(t);
        int no;
        no = i = bb->getInsts().size() + i;
        for (auto inst = bb->getInsts().rbegin(); inst != bb->getInsts().rend(); inst++)
        {
            (*inst)->setNo(no--);
            for (auto &def : (*inst)->getDef())
            {
                if (def->isVReg())
                {
                    auto &uses = liveVar[*def];
                    du_chains[def].insert(uses.begin(), uses.end());
                    auto &kill = lva.getAllUses()[*def];
                    std::set<MachineOperand *> res;
                    set_difference(uses.begin(), uses.end(), kill.begin(), kill.end(), inserter(res, res.end()));
                    liveVar[*def] = res;
                }
            }
            for (auto &use : (*inst)->getUse())
            {
                if (use->isVReg())
                    liveVar[*use].insert(use);
            }
        }
    }
}

void LinearScan::computeLiveIntervals()
{
    makeDuChains();
    intervals.clear();
    for (auto &du_chain : du_chains)
    {
        int t = -1;
        for (auto &use : du_chain.second)
            t = std::max(t, use->getParent()->getNo());
        Interval *interval = new Interval({du_chain.first->getParent()->getNo(), t, false, 0, 0, du_chain.first->getValType(), {du_chain.first}, du_chain.second});
        intervals.push_back(interval);
    }
    for (auto& interval : intervals) {
        auto uses = interval->uses;
        auto begin = interval->start;
        auto end = interval->end;
        for (auto block : func->getBlocks()) {
            auto liveIn = block->getLiveIn();
            auto liveOut = block->getLiveOut();
            bool in = false;
            bool out = false;
            for (auto use : uses)
                if (liveIn.count(use)) {
                    in = true;
                    break;
                }
            for (auto use : uses)
                if (liveOut.count(use)) {
                    out = true;
                    break;
                }
            if (in && out) {
                begin = std::min(begin, (*(block->begin()))->getNo());
                end = std::max(end, (*(block->rbegin()))->getNo());
            } else if (!in && out) {
                for (auto i : block->getInsts())
                    if (i->getDef().size() > 0 &&
                        i->getDef()[0] == *(uses.begin())) {
                        begin = std::min(begin, i->getNo());
                        break;
                    }
                end = std::max(end, (*(block->rbegin()))->getNo());
            } else if (in && !out) {
                begin = std::min(begin, (*(block->begin()))->getNo());
                int temp = 0;
                for (auto use : uses)
                    if (use->getParent()->getParent() == block)
                        temp = std::max(temp, use->getParent()->getNo());
                end = std::max(temp, end);
            }
        }
        interval->start = begin;
        interval->end = end;
    }
    bool change;
    change = true;
    while (change)
    {
        change = false;
        std::vector<Interval *> t(intervals.begin(), intervals.end());
        for (size_t i = 0; i < t.size(); i++)
            for (size_t j = i + 1; j < t.size(); j++)
            {
                Interval *w1 = t[i];
                Interval *w2 = t[j];
                if (**w1->defs.begin() == **w2->defs.begin())
                {
                    std::set<MachineOperand *> temp;
                    set_intersection(w1->uses.begin(), w1->uses.end(), w2->uses.begin(), w2->uses.end(), inserter(temp, temp.end()));
                    if (!temp.empty())
                    {
                        change = true;
                        w1->defs.insert(w2->defs.begin(), w2->defs.end());
                        w1->uses.insert(w2->uses.begin(), w2->uses.end());
                        // w1->start = std::min(w1->start, w2->start);
                        // w1->end = std::max(w1->end, w2->end);
                        auto w1Min = std::min(w1->start, w1->end);
                        auto w1Max = std::max(w1->start, w1->end);
                        auto w2Min = std::min(w2->start, w2->end);
                        auto w2Max = std::max(w2->start, w2->end);
                        w1->start = std::min(w1Min, w2Min);
                        w1->end = std::max(w1Max, w2Max);
                        auto it = std::find(intervals.begin(), intervals.end(), w2);
                        if (it != intervals.end())
                            intervals.erase(it);
                    }
                }
            }
    }
    sort(intervals.begin(), intervals.end(), compareStart);
}

bool LinearScan::linearScanRegisterAllocation()
{
    // Todo
    /*
        active ←{}
        foreach live interval i, in order of increasing start point
            ExpireOldIntervals(i)
            if length(active) = R then
                SpillAtInterval(i)
            else
                register[i] ← a register removed from pool of free registers
                add i to active, sorted by increasing end point
    */

    bool success = true;
    active.clear();
    rregs.clear();
    sregs.clear();

    for (int i = 4; i < 11; i++)
        rregs.push_back(i);
    for (int i = 5; i < 32; i++)
        sregs.push_back(i);

    for (auto &interval : intervals)
    {
        expireOldIntervals(interval);

        if (interval->valType->isFloat())
        {
            if (sregs.empty())
            {
                spillAtInterval(interval);
                success = false;
            } else {
                interval->rreg = sregs.front();
                sregs.erase(sregs.begin());
                insertToActive(interval);
            }
        } else {
            if (rregs.empty())
            {
                spillAtInterval(interval);
                success = false;
            } else {
                interval->rreg = rregs.front();
                rregs.erase(rregs.begin());
                insertToActive(interval);
            }
        }
    }

    return success;
}

void LinearScan::modifyCode()
{
    for (auto &interval : intervals)
    {
        func->addSavedRegs(interval->rreg, interval->valType->isFloat());
        for (auto def : interval->defs)
            def->setReg(interval->rreg);
        for (auto use : interval->uses)
            use->setReg(interval->rreg);
    }
}

void LinearScan::genSpillCode()
{
    for (auto &interval : intervals)
    {
        if (!interval->spill)
            continue;
        // TODO
        /* HINT:
         * The vreg should be spilled to memory.
         * 1. insert ldr inst before the use of vreg
         * 2. insert str inst after the def of vreg
         */ 

        interval->disp = func->AllocSpace(4);
        for (auto use : interval->uses)
        {
            MachineBlock *block = use->getParent()->getParent();
            auto pos = use->getParent();
            auto offset = new MachineOperand(MachineOperand::IMM, -interval->disp);
            if (offset->isIllegalShifterOperand())
            {
                auto internal_reg = new MachineOperand(MachineOperand::VREG, SymbolTable::getLabel());
                auto ldr = new LoadMInstruction(use->getParent()->getParent(), internal_reg, offset);
                block->insertBefore(pos, ldr);
                offset = new MachineOperand(*internal_reg);
            }
            block->insertBefore(pos, new LoadMInstruction(block, new MachineOperand(*use), new MachineOperand(MachineOperand::REG, 11), offset));
        }

        for (auto def : interval->defs)
        {
            MachineBlock *block = def->getParent()->getParent();
            auto pos = def->getParent();
            auto offset = new MachineOperand(MachineOperand::IMM, -interval->disp);
            if (offset->isIllegalShifterOperand())
            {
                auto internal_reg = new MachineOperand(MachineOperand::VREG, SymbolTable::getLabel());
                auto ldr = new LoadMInstruction(def->getParent()->getParent(), internal_reg, offset);
                block->insertAfter(pos, ldr);
                offset = new MachineOperand(*internal_reg);
                pos = ldr;
            }
            block->insertAfter(pos, new StoreMInstruction(block, new MachineOperand(*def), new MachineOperand(MachineOperand::REG, 11), offset));
        }
    }
}

void LinearScan::expireOldIntervals(Interval *interval)
{
    // Todo
    /*
        foreach interval j in active, in order of increasing end point
            if endpoint[j] ≥ startpoint[i] then
                return
            remove j from active
            add register[j] to pool of free registers
    */

    auto it = active.begin();
    while (it != active.end()) {
        if ((*it)->end >= interval->start)
            return;

        if ((*it)->valType->isFloat()){
            auto insertPos = std::lower_bound(sregs.begin(), sregs.end(), (*it)->rreg);
            sregs.insert(insertPos, (*it)->rreg);
        }
        else {
            auto insertPos = std::lower_bound(rregs.begin(), rregs.end(), (*it)->rreg);
            rregs.insert(insertPos, (*it)->rreg);
        }
            
        it = active.erase(find(active.begin(), active.end(), *it));
    }
}

void LinearScan::spillAtInterval(Interval *interval)
{
    // Todo
    /*
        spill ← last interval in active
        if endpoint[spill] > endpoint[i] then
            register[i] ← register[spill]
            location[spill] ← new stack location
            remove spill from active
            add i to active, sorted by increasing end point
        else
            location[i] ← new stack location

    */

    auto spill = active.back();
    if (spill->end > interval->end){
        spill->spill = true;
        interval->rreg = spill->rreg;
        insertToActive(interval);
    } else {
        interval->spill = true;
    }
    
}

bool LinearScan::compareStart(Interval *a, Interval *b)
{
    return a->start < b->start;
}

// 按照活跃区间结束位置，将newInterval插入到 active 列表
void LinearScan::insertToActive(Interval *newInterval)
{
    // 遍历寻找第一个结束位置大于newInterval的区间
    // 插入到它的前面
    for (auto it = active.begin(); it != active.end(); it++)
    {
        if ((*it)->end > newInterval->end)
        {
            active.insert(it, 1, newInterval);
            return;
        }
    }

    // 没找到，则插入到最后
    active.push_back(newInterval);
}