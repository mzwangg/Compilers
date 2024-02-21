#ifndef __SIMPLIFYCFG_H__
#define __SIMPLIFYCFG_H__

#include "Unit.h"

class SimplifyCFG {
private:
    Unit* unit;

public:
    SimplifyCFG(Unit* unit) : unit(unit){};
    void pass();
};

#endif