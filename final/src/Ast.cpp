#include "Ast.h"
#include <assert.h>
#include <exception>
#include <string>
#include "IRBuilder.h"
#include "Instruction.h"
#include "SymbolTable.h"
#include "Type.h"
#include "Unit.h"

extern FILE* yyout;
int Node::counter = 0;
IRBuilder* Node::builder = nullptr;
static int height = 0;
static int offset = 0;
static Operand* arrayAddr;
static Operand* lastAddr;
static Type* arrayType = nullptr;
static std::vector<int> d;
static std::vector<int> recover;
std::vector<int> cur_dim;
ArrayType* cur_type;
std::vector<ExprNode*> vec_val;
bool is_fp = false;

// 递归获取初始化节点中所有叶子节点或非空节点的指针，并存储到全局容器 vec_val 中
static void getVecValues(InitNode* currentNode) {
    // 如果当前节点是叶子节点或者节点本身非空
    if (currentNode->isLeaf() || currentNode->getself() != nullptr) {
        // 将节点指针添加到全局容器 vec_val 中
        vec_val.push_back(currentNode->getself());
    } else {
        // 如果当前节点有子节点，递归处理每个子节点
        for (auto leaf : currentNode->getleaves()) {
            getVecValues(leaf);
        }
    }
}

static void update_Curr_type(ArrayType*& curr_type) {
    if (cur_type->isIntArray()) {
        if (cur_type->isConst())
            curr_type = new ConstIntArrayType();
        else
            curr_type = new IntArrayType();
    } else {
        if (cur_type->isConst())
            curr_type = new ConstFloatArrayType();
        else
            curr_type = new FloatArrayType();
    }
}

Node::Node() {
    seq = counter++;
}

void Ast::output() {
    fprintf(yyout, "CompUnit\n");
    if (root != nullptr)
        root->output(4);
}

Type* ExprNode::getType() {
    if (symbolEntry->getType()->isPTR()) {
        return ((PointerType*)symbolEntry->getType())->getValType();
    } else {
        if (!is_array_ele)
            return symbolEntry->getType();
        else
            return dynamic_cast<ArrayType*>(symbolEntry->getType())
                ->getElemType();
    }
}

void ExprNode::setDst(Operand* newDst) {
    if (dst != nullptr)
        delete dst;
    dst = newDst;
}

void Id::output(int level) {
    std::string name, type;
    int scope;
    name = ((IdentifierSymbolEntry*)symbolEntry)->getName();
    type = symbolEntry->getType()->toStr();
    scope = dynamic_cast<IdentifierSymbolEntry*>(symbolEntry)->getScope();
    fprintf(yyout, "%*cId \t name: %s \t scope: %d \t type: %s\n", level, ' ',
            name.c_str(), scope, type.c_str());
    if (indices != nullptr)
        indices->output(level + 4);
}

void UnaryExpr::output(int level) {
    std::string op_str, type;
    switch (op) {
        case PLUS:
            op_str = "plus";
            break;
        case MINUS:
            op_str = "minus";
            break;
        case NOT:
            op_str = "not";
            break;
    }
    type = symbolEntry->getType()->toStr();
    fprintf(yyout, "%*cUnaryExpr \t op: %s \t type: %s\n", level, ' ',
            op_str.c_str(), type.c_str());
    expr->output(level + 4);
}

void BinaryExpr::output(int level) {
    std::string op_str, type;
    switch (op) {
        case ADD:
            op_str = "add";
            break;
        case SUB:
            op_str = "sub";
            break;
        case MUL:
            op_str = "mul";
            break;
        case DIV:
            op_str = "div";
            break;
        case MOD:
            op_str = "mod";
            break;
        case LESS:
            op_str = "less";
            break;
        case GREATER:
            op_str = "great";
            break;
        case LESSEQ:
            op_str = "lesseq";
            break;
        case GREATEREQ:
            op_str = "greateq";
            break;
        case EQ:
            op_str = "eq";
            break;
        case NEQ:
            op_str = "neq";
            break;
        case AND:
            op_str = "and";
            break;
        case OR:
            op_str = "or";
            break;
    }
    type = symbolEntry->getType()->toStr();
    fprintf(yyout, "%*cBinaryExpr \t op: %s \t type: %s\n", level, ' ',
            op_str.c_str(), type.c_str());
    expr1->output(level + 4);
    expr2->output(level + 4);
}

void Constant::output(int level) {
    std::string type, value;
    type = symbolEntry->getType()->toStr();
    value = symbolEntry->toStr();
    fprintf(yyout, "%*cLiteral \t value: %s \t type: %s\n", level, ' ',
            value.c_str(), type.c_str());
}

void ImplicitCast::output(int level) {
    std::string old_type, new_type;
    old_type = expr->getType()->toStr();
    new_type = symbolEntry->getType()->toStr();
    fprintf(yyout, "%*cImplicitCast \t  %s -> %s\n", level, ' ',
            old_type.c_str(), new_type.c_str());
    expr->output(level + 4);
}

void CompoundStmt::output(int level) {
    fprintf(yyout, "%*cCompoundStmt\n", level, ' ');
    if (stmt != nullptr)
        stmt->output(level + 4);
}

void SeqStmt::output(int level) {
    fprintf(yyout, "%*cSequence\n", level, ' ');
    for (auto stmt : stmts)
        stmt->output(level + 4);
}

void DeclStmt::output(int level) {
    fprintf(yyout, "%*cDeclStmt\n", level, ' ');
    id->output(level + 4);
    if (expr != nullptr)
        expr->output(level + 4);
    if (next != nullptr)
        next->output(level);
}

void IfStmt::output(int level) {
    fprintf(yyout, "%*cIfStmt\n", level, ' ');
    cond->output(level + 4);
    thenStmt->output(level + 4);
}

void IfElseStmt::output(int level) {
    fprintf(yyout, "%*cIfElseStmt\n", level, ' ');
    cond->output(level + 4);
    thenStmt->output(level + 4);
    elseStmt->output(level + 4);
}

void ReturnStmt::output(int level) {
    fprintf(yyout, "%*cReturnStmt\n", level, ' ');
    if (!retValue)
        fprintf(yyout, "%*cvoid\n", level + 4, ' ');
    else
        retValue->output(level + 4);
}

void AssignStmt::output(int level) {
    fprintf(yyout, "%*cAssignStmt\n", level, ' ');
    lval->output(level + 4);
    expr->output(level + 4);
}

void ExprStmt::output(int level) {
    fprintf(yyout, "%*cExprStmt\n", level, ' ');
    expr->output(level + 4);
}

void NullStmt::output(int level) {
    fprintf(yyout, "%*cNullStmt\n", level, ' ');
}

void BreakStmt::output(int level) {
    fprintf(yyout, "%*cBreakStmt\n", level, ' ');
}

void ContinueStmt::output(int level) {
    fprintf(yyout, "%*cContinueStmt\n", level, ' ');
}

void WhileStmt::output(int level) {
    fprintf(yyout, "%*cWhileStmt\n", level, ' ');
    cond->output(level + 4);
    stmt->output(level + 4);
}

void FuncCallNode::output(int level) {
    SymbolEntry* funcEntry = funcId->getSymPtr();
    std::string name = funcEntry->toStr();
    std::string type = funcEntry->getType()->toStr();
    int scope = dynamic_cast<IdentifierSymbolEntry*>(funcEntry)->getScope();
    fprintf(yyout,
            "%*cFuncCallNode \t funcName: %s \t funcType: %s \t scope: %d\n",
            level, ' ', name.c_str(), type.c_str(), scope);
    if (params != nullptr)
        params->output(level + 4);
    else
        fprintf(yyout, "%*cFuncCallParamsNode \t nullptr\n", level + 4, ' ');
}

std::vector<Type*> FuncCallParamsNode::getParamsType() {
    std::vector<Type*> ans;
    for (auto param : paramsList)
        ans.push_back(param->getType());
    return ans;
}

void FuncCallParamsNode::output(int level) {
    fprintf(yyout, "%*cFuncCallParamsNode\n", level, ' ');
    for (auto param : paramsList)
        param->output(level + 4);
}

void FuncDefNode::output(int level) {
    std::string name = se->toStr();
    std::string type = se->getType()->toStr();
    fprintf(yyout, "%*cFuncDefNode \t function name: %s \t type: %s\n", level,
            ' ', name.c_str(), type.c_str());
    if (params != nullptr)
        params->output(level + 4);
    else
        fprintf(yyout, "%*cFuncDefParamsNode \t nullptr\n", level + 4, ' ');
    stmt->output(level + 4);
}

void FuncDefParamsNode::output(int level) {
    fprintf(yyout, "%*cFuncDefParamsNode\n", level, ' ');
    for (auto param : paramsList)
        param->output(level + 4);
}

void FuncDefParamsNode::addChild(Id* next) {
    dynamic_cast<IdentifierSymbolEntry*>(next->getSymPtr())
        ->setParamNo(paramsList.size());
    paramsList.push_back(next);
}

std::vector<Type*> FuncDefParamsNode::getParamsType() {
    std::vector<Type*> ans;
    for (auto param : paramsList)
        ans.push_back(param->getType());
    return ans;
}

void Node::backPatch(std::vector<Instruction*>& list, BasicBlock* bb) {
    for (auto& inst : list) {
        if (inst->isCond())
            dynamic_cast<CondBrInstruction*>(inst)->setTrueBranch(bb);
        else if (inst->isUncond())
            dynamic_cast<UncondBrInstruction*>(inst)->setBranch(bb);
    }
}

std::vector<Instruction*> Node::merge(std::vector<Instruction*>& list1,
                                      std::vector<Instruction*>& list2) {
    std::vector<Instruction*> res(list1);
    res.insert(res.end(), list2.begin(), list2.end());
    return res;
}

void Ast::genCode(Unit* unit) {
    IRBuilder* builder = new IRBuilder(unit);
    Node::setIRBuilder(builder);
    root->genCode();
}

void Id::genCode() {
    // 检查是否为常量且非数组，进行常量折叠
    if (getType()->isConst() && !is_Array())
        return;

    BasicBlock* bb = builder->getInsertBB();
    Operand* addr =
        dynamic_cast<IdentifierSymbolEntry*>(symbolEntry)->getAddr();

    // 处理非数组情况
    if (!is_Array()) {
        dst = new Operand(new TemporarySymbolEntry(symbolEntry->getType(),
                                                   SymbolTable::getLabel()));
        new LoadInstruction(dst, addr, bb);
    } else {
        bool isPtr = (symbolEntry->getType())->isPTR();
        if (indices != nullptr) {
            // 获取当前数组类型
            if (!isPtr)
                cur_type = ((ArrayType*)getSymPtr()->getType());
            else
                cur_type = (ArrayType*)((PointerType*)symbolEntry->getType())
                               ->getValType();

            Operand* tempSrc = addr;
            ArrayType* curr_type;
            update_Curr_type(curr_type);

            Operand* dst1;
            if (isPtr) {
                // 处理指针情况，插入加载指令
                dst1 = new Operand(new TemporarySymbolEntry(
                    ((PointerType*)addr->getType())->getValType(),
                    SymbolTable::getLabel()));
                new LoadInstruction(dst1, addr, bb);
                tempSrc = dst1;
            }

            std::vector<int> currr_dim;
            if (!isPtr)
                currr_dim = ((ArrayType*)getSymPtr()->getType())->fetch();
            else
                currr_dim = ((ArrayType*)((PointerType*)getSymPtr()->getType())
                                 ->getValType())
                                ->fetch();

            // 处理维度为-1的情况
            if (currr_dim.size() > 0) {
                if (currr_dim[0] == -1) {
                    TemporarySymbolEntry* se = new TemporarySymbolEntry(
                        new PointerType(getType()), SymbolTable::getLabel());
                    Operand* new_addr = new Operand(se);
                    new LoadInstruction(new_addr, addr, bb);
                    tempSrc = new_addr;
                }
            }

            if (currr_dim.size() != indices->getExprList().size() && !isPtr)
                is_FP = true;
            if (!isPtr)
                currr_dim.erase(currr_dim.begin());
            curr_type->SetDim(currr_dim);

            Operand* tempDst;
            bool isFirst = true;
            for (auto idx : indices->getExprList()) {
                if (!currr_dim.empty() && !isFirst) {
                    currr_dim.erase(currr_dim.begin());
                    update_Curr_type(curr_type);
                    curr_type->SetDim(currr_dim);
                }
                idx->genCode();
                tempDst = new Operand(new TemporarySymbolEntry(
                    new PointerType(curr_type), SymbolTable::getLabel()));

                // 插入 GEP 指令
                if (isPtr && isFirst)
                    new GepInstruction(tempDst, tempSrc,
                                       std::vector<Operand*>{idx->getOperand()},
                                       bb);
                else
                    new GepInstruction(
                        tempDst, tempSrc,
                        std::vector<Operand*>{nullptr, idx->getOperand()}, bb);

                tempSrc = tempDst;
                isFirst = false;
            }

            if (is_FP) {
                tempDst = new Operand(new TemporarySymbolEntry(
                    new PointerType(curr_type), SymbolTable::getLabel()));
                new GepInstruction(tempDst, tempSrc,
                                   std::vector<Operand*>{nullptr, nullptr}, bb);
                tempSrc = tempDst;
            }

            if (isleft) {
                // 处理左值情况
                arrayAddr = new Operand(new TemporarySymbolEntry(
                    new PointerType(curr_type->getElemType()),
                    ((TemporarySymbolEntry*)tempSrc->getEntry())->getLabel()));
                dst = arrayAddr;
                return;
            }

            Operand* new_dst;
            if (!isFirst)
                new_dst = new Operand(new TemporarySymbolEntry(
                    new PointerType(curr_type),
                    ((TemporarySymbolEntry*)tempSrc->getEntry())->getLabel()));
            else {
                // 处理基本类型
                if (curr_type->getElemType()->isAnyInt())
                    new_dst = new Operand(new TemporarySymbolEntry(
                        new PointerType(TypeSystem::intType),
                        ((TemporarySymbolEntry*)tempSrc->getEntry())
                            ->getLabel()));
                else
                    new_dst = new Operand(new TemporarySymbolEntry(
                        new PointerType(TypeSystem::floatType),
                        ((TemporarySymbolEntry*)tempSrc->getEntry())
                            ->getLabel()));
            }

            if (!isPtr) {
                // 处理非指针情况
                if (getType()->isInt())
                    dst1 = new Operand(new TemporarySymbolEntry(
                        TypeSystem::intType, SymbolTable::getLabel()));
                else
                    dst1 = new Operand(new TemporarySymbolEntry(
                        TypeSystem::floatType, SymbolTable::getLabel()));
            } else {
                // 处理指针情况
                if (curr_type->getElemType()->isInt())
                    dst1 = new Operand(new TemporarySymbolEntry(
                        TypeSystem::intType, SymbolTable::getLabel()));
                else
                    dst1 = new Operand(new TemporarySymbolEntry(
                        TypeSystem::floatType, SymbolTable::getLabel()));
            }

            if (is_FP) {
                dst = new Operand(new TemporarySymbolEntry(
                    new PointerType(curr_type->getElemType()),
                    ((TemporarySymbolEntry*)tempSrc->getEntry())->getLabel()));
                is_FP = false;
                return;
            }

            // 插入加载指令
            new LoadInstruction(dst1, new_dst, bb);
            dst = dst1;
        } else {
            // 处理符号表项类型为指针的情况
            if (symbolEntry->getType()->isPTR()) {
                ArrayType* curr_type;
                update_Curr_type(curr_type);
                std::vector<int> currdim = curr_type->fetch();
                curr_type->SetDim(currdim);

                // 创建目标操作数
                Operand* dst1 = new Operand(new TemporarySymbolEntry(
                    new PointerType(curr_type), SymbolTable::getLabel()));

                // 插入加载指令
                new LoadInstruction(dst1, addr, bb);

                // 更新目标操作数
                dst = dst1;
            } else {
                // 处理符号表项类型为数组的情况
                std::vector<int> FunP(
                    ((ArrayType*)symbolEntry->getType())->fetch());
                Type* curr_type;
                cur_type = ((ArrayType*)getSymPtr()->getType());

                if (FunP.size() > 0) {
                    FunP.erase(FunP.begin());

                    if (FunP.size() != 0) {
                        // 创建新的数组类型
                        if (cur_type->isIntArray()) {
                            if (cur_type->isConst())
                                curr_type = new ConstIntArrayType();
                            else
                                curr_type = new IntArrayType();
                        } else {
                            if (cur_type->isConst())
                                curr_type = new ConstFloatArrayType();
                            else
                                curr_type = new FloatArrayType();
                        }

                        // 设置新的数组维度
                        ((ArrayType*)curr_type)->SetDim(FunP);
                    } else {
                        // 如果数组维度为零，则直接使用基本类型
                        if (cur_type->isIntArray()) {
                            if (cur_type->isConst())
                                curr_type = TypeSystem::constIntType;
                            else
                                curr_type = TypeSystem::intType;
                        } else {
                            if (cur_type->isConst())
                                curr_type = TypeSystem::constFloatType;
                            else
                                curr_type = TypeSystem::floatType;
                        }
                    }
                } else
                    assert(0);

                // 创建索引操作数
                Operand* idx = new Operand(
                    new ConstantSymbolEntry(TypeSystem::constIntType, 0));

                // 创建目标操作数
                dst = new Operand(new TemporarySymbolEntry(
                    new PointerType(curr_type), SymbolTable::getLabel()));

                // 插入 GEP 指令
                new GepInstruction(dst, addr,
                                   std::vector<Operand*>{nullptr, idx}, bb);
            }
        }
    }
}

void UnaryExpr::genCode() {
    BasicBlock* bb = builder->getInsertBB();
    Function* func = (bb == nullptr) ? nullptr : bb->getParent();

    if (getType()->isConst()) {
        if (op == NOT) {
            if (height > 0) {
                if (getValue()) {
                    BasicBlock* trueBB = nullptr;
                    true_list.push_back(new UncondBrInstruction(trueBB, bb));
                } else {
                    BasicBlock* falseBB = nullptr;
                    false_list.push_back(new UncondBrInstruction(falseBB, bb));
                }
            }
        }
        return;
    }

    Operand *src1, *src2;
    if (op == MINUS) {
        // 处理负号运算符
        expr->genCode();
        src2 = expr->getOperand();
        src1 =
            new Operand(new ConstantSymbolEntry(Var2Const(src2->getType()), 0));
        new BinaryInstruction(BinaryInstruction::SUB, dst, src1, src2, bb);
    } else if (op == NOT) {
        // 处理逻辑非运算符
        height--;
        expr->genCode();
        height++;
        src1 = expr->getOperand();
        src2 =
            new Operand(new ConstantSymbolEntry(Var2Const(src1->getType()), 0));
        new CmpInstruction(CmpInstruction::E, dst, src1, src2, bb);

        if (expr->getType()->isBool()) {
            // 处理布尔类型
            true_list = expr->falseList();
            false_list = expr->trueList();
        } else if (height > 0) {
            // 处理非布尔类型
            BasicBlock *trueBB = nullptr, *falseBB = new BasicBlock(func),
                       *endBB = nullptr;
            true_list.push_back(
                new CondBrInstruction(trueBB, falseBB, dst, bb));
            false_list.push_back(new UncondBrInstruction(endBB, falseBB));
        }
    }
}

void BinaryExpr::genCode() {
    BasicBlock* bb = builder->getInsertBB();
    Function* func = (bb == nullptr) ? nullptr : bb->getParent();

    // 常量折叠
    if (getType()->isConst()) {
        if (getType()->isConstBool()) {
            if (height > 0) {
                if (getValue()) {
                    BasicBlock* trueBB = nullptr;
                    true_list.push_back(new UncondBrInstruction(trueBB, bb));
                } else {
                    BasicBlock* falseBB = nullptr;
                    false_list.push_back(new UncondBrInstruction(falseBB, bb));
                }
            }
        }
        return;
    }

    if (op == AND) {
        // 处理逻辑与运算符
        expr1->genCode();
        if (!expr1->trueList().empty()) {
            BasicBlock* trueBB = new BasicBlock(func);
            backPatch(expr1->trueList(), trueBB);
            builder->setInsertBB(trueBB);
            expr2->genCode();
            true_list = expr2->trueList();
            false_list = merge(expr1->falseList(), expr2->falseList());
        } else {
            false_list = expr1->falseList();
        }
    } else if (op == OR) {
        // 处理逻辑或运算符
        expr1->genCode();
        if (!expr1->falseList().empty()) {
            BasicBlock* falseBB = new BasicBlock(func);
            backPatch(expr1->falseList(), falseBB);
            builder->setInsertBB(falseBB);
            expr2->genCode();
            true_list = merge(expr1->trueList(), expr2->trueList());
            false_list = expr2->falseList();
        } else {
            true_list = expr1->trueList();
        }
    } else {
        height--;
        expr1->genCode();
        expr2->genCode();
        height++;

        Operand *src1 = expr1->getOperand(), *src2 = expr2->getOperand();

        if (op >= LESS && op <= NEQ) {
            // 处理比较运算符
            int opcode;
            switch (op) {
                case LESS:
                    opcode = CmpInstruction::L;
                    break;
                case LESSEQ:
                    opcode = CmpInstruction::LE;
                    break;
                case GREATER:
                    opcode = CmpInstruction::G;
                    break;
                case GREATEREQ:
                    opcode = CmpInstruction::GE;
                    break;
                case EQ:
                    opcode = CmpInstruction::E;
                    break;
                case NEQ:
                    opcode = CmpInstruction::NE;
                    break;
            }
            new CmpInstruction(opcode, dst, src1, src2, bb);

            if (height > 0) {
                BasicBlock *trueBB = nullptr, *falseBB = new BasicBlock(func),
                           *endBB = nullptr;
                true_list.push_back(
                    new CondBrInstruction(trueBB, falseBB, dst, bb));
                false_list.push_back(new UncondBrInstruction(endBB, falseBB));
            }
        } else if (op >= ADD && op <= MOD) {
            // 处理算术运算符
            int opcode;
            switch (op) {
                case ADD:
                    opcode = BinaryInstruction::ADD;
                    break;
                case SUB:
                    opcode = BinaryInstruction::SUB;
                    break;
                case MUL:
                    opcode = BinaryInstruction::MUL;
                    break;
                case DIV:
                    opcode = BinaryInstruction::DIV;
                    break;
                case MOD:
                    opcode = BinaryInstruction::MOD;
                    break;
            }
            new BinaryInstruction(opcode, dst, src1, src2, bb);
        }
    }
}

void Constant::genCode() {
    BasicBlock* bb = builder->getInsertBB();
    if (getType() == TypeSystem::constBoolType)
        if (height > 0) {
            if (getValue()) {
                BasicBlock* trueBB = nullptr;
                true_list.push_back(new UncondBrInstruction(trueBB, bb));
            } else {
                BasicBlock* falseBB = nullptr;
                false_list.push_back(new UncondBrInstruction(falseBB, bb));
            }
        }
    return;
}

void ImplicitCast::genCode() {
    BasicBlock* bb = builder->getInsertBB();
    Function* func = (bb == nullptr) ? nullptr : bb->getParent();

    if (getType()->isConst()) {
        if (getType() == TypeSystem::constBoolType) {
            if (height > 0) {
                if (getValue()) {
                    BasicBlock* trueBB = nullptr;
                    true_list.push_back(new UncondBrInstruction(trueBB, bb));
                } else {
                    BasicBlock* falseBB = nullptr;
                    false_list.push_back(new UncondBrInstruction(falseBB, bb));
                }
            }
        }
        return;
    }

    expr->genCode();

    // 处理类型转换
    if (this->getType()->isBool() || this->getType()->isConstBool()) {
        // int/float -> bool
        Operand* src1 = expr->getOperand();
        Operand* src2 =
            new Operand(new ConstantSymbolEntry(Var2Const(src1->getType()), 0));
        new CmpInstruction(CmpInstruction::NE, dst, src1, src2, bb);

        if (height > 0) {
            BasicBlock *trueBB = nullptr, *falseBB = new BasicBlock(func),
                       *endBB = nullptr;
            true_list.push_back(
                new CondBrInstruction(trueBB, falseBB, dst, bb));
            false_list.push_back(new UncondBrInstruction(endBB, falseBB));
        }
    } else if (this->getType()->isInt() || this->getType()->isConstInt()) {
        Operand* src = expr->getOperand();

        // bool -> int
        if (src->getType()->isBool() || src->getType()->isConstBool()) {
            new ZextInstruction(dst, src, bb);
        }
        // float -> int
        else {
            assert(src->getType()->isFloat() || src->getType()->isConstFloat());
            new IntFloatCastInstruction(IntFloatCastInstruction::F2S, dst, src,
                                        bb);
        }
    } else {
        assert(this->getType()->isFloat() || this->getType()->isConstFloat());
        Operand* src = expr->getOperand();

        // bool -> float
        if (src->getType()->isBool() || src->getType()->isConstBool()) {
            Type* type = src->getType()->isConstBool()
                             ? TypeSystem::constIntType
                             : TypeSystem::intType;
            Operand* t = new Operand(
                new TemporarySymbolEntry(type, SymbolTable::getLabel()));
            new ZextInstruction(t, src, bb);
            new IntFloatCastInstruction(IntFloatCastInstruction::S2F, dst, t,
                                        bb);
        }
        // int -> float
        else {
            assert(src->getType() == TypeSystem::intType ||
                   src->getType() == TypeSystem::constIntType);
            new IntFloatCastInstruction(IntFloatCastInstruction::S2F, dst, src,
                                        bb);
        }
    }
}

void CompoundStmt::genCode() {
    if (stmt != nullptr)
        stmt->genCode();
}

void SeqStmt::genCode() {
    for (auto stmt : stmts)
        stmt->genCode();
}

void InitNode::genCode(int level) {
    for (size_t i = 0; i < vec_val.size(); i++) {
        int pos = i;

        // 确定当前数组类型基于元素类型和是否为常量
        ArrayType* curr_type;
        update_Curr_type(curr_type);

        std::vector<int> curr_dim(cur_dim);
        Operand* final_offset = arrayAddr;

        for (size_t j = 0; j < d.size(); j++) {
            curr_dim.erase(curr_dim.begin());

            // 更新当前维度信息
            curr_type->SetDim(curr_dim);

            Operand* offset_operand = new Operand(
                new ConstantSymbolEntry(TypeSystem::constIntType, pos / d[j]));

            Operand* addr = final_offset;
            final_offset = new Operand(new TemporarySymbolEntry(
                new PointerType(curr_type), SymbolTable::getLabel()));

            // 生成 GEP 指令以计算偏移量
            new GepInstruction(final_offset, addr,
                               std::vector<Operand*>{nullptr, offset_operand},
                               builder->getInsertBB());

            pos %= d[j];
            // 基于元素类型和常量性更新当前类型
            update_Curr_type(curr_type);
        }

        // 生成初始化值的代码
        vec_val[i]->genCode();
        Operand* src = vec_val[i]->getOperand();

        // 更新最终偏移量的类型，确保其为元素类型的指针
        final_offset = new Operand(new TemporarySymbolEntry(
            new PointerType(((ArrayType*)curr_type)->getElemType()),
            dynamic_cast<TemporarySymbolEntry*>(final_offset->getEntry())
                ->getLabel()));

        // 生成存储指令
        new StoreInstruction(final_offset, src, builder->getInsertBB());

        curr_dim.clear();
    }
}

void IndicesNode::output(int level) {
    fprintf(yyout, "%*cIndicesNode\n", level, ' ');
    for (auto expr : exprList) {
        expr->output(level + 4);
    }
}

void InitNode::output(int level) {
    std::string constStr = isconst ? "true" : "false";
    fprintf(yyout, "%*cInitValNode\tisConst:%s\n", level, ' ',
            constStr.c_str());
    for (auto l : leaves) {
        l->output(level + 4);
    }
    if (leaf != nullptr) {
        leaf->output(level + 4);
    }
}

void IndicesNode::genCode() {
    for (auto ele : exprList)
        ele->genCode();
}

DeclStmt::DeclStmt(Id* id, InitNode* expr, bool isConst, bool isArray)
    : id(id), expr(expr), BeConst(isConst), BeArray(isArray) {
    next = nullptr;

    if (expr != nullptr) {
        if (id->getType()->isARRAY()) {
            std::vector<int> origin_dim =
                ((ArrayType*)(id->getType()))->fetch();
            expr->fill(0, origin_dim,
                       ((ArrayType*)(id->getType()))->getElemType());
            vec_val.clear();
            getVecValues(expr);
            std::vector<double> arrVals;
            for (auto elem : vec_val)
                arrVals.push_back(elem->getValue());
            id->getSymPtr()->setArrVals(arrVals);
        }
    }

    this->head = nullptr;
};

void DeclStmt::genCode() {
    // 如果是常量且非数组，不生成代码
    if (id->getType()->isConst() && !id->getSymPtr()->getType()->isARRAY())
        return;

    Operand* addr;
    IdentifierSymbolEntry* se =
        dynamic_cast<IdentifierSymbolEntry*>(id->getSymPtr());

    // 全局变量处理
    if (se->isGlobal()) {
        SymbolEntry* addr_se = new IdentifierSymbolEntry(*se);
        addr_se->setType(new PointerType(se->getType()));
        addr = new Operand(addr_se);
        se->setAddr(addr);
        this->builder->getUnit()->insertDecl(se);
    }
    // 局部变量处理
    else if (se->isLocal()) {
        Function* func = builder->getInsertBB()->getParent();
        BasicBlock* entry = func->getEntry();
        addr = new Operand(new TemporarySymbolEntry(
            new PointerType(se->getType()), SymbolTable::getLabel()));
        Instruction* alloca = new AllocaInstruction(addr, se);
        entry->insertFront(alloca);
        se->setAddr(addr);
        Operand* temp = nullptr;

        if (se->isParam())
            temp = se->getAddr();

        if (expr != nullptr) {
            BasicBlock* bb = builder->getInsertBB();
            assert(addr != nullptr);

            // 如果是数组类型，生成数组初始化代码
            if (se->getType()->isARRAY()) {
                arrayType = se->getType();
                Type* type = ((ArrayType*)arrayType)->getElemType();
                if (type->isInt()) {
                    if (type->isConst())
                        cur_type = new ConstIntArrayType();
                    else
                        cur_type = new IntArrayType();
                } else {
                    if (type->isConst())
                        cur_type = new ConstFloatArrayType();
                    else
                        cur_type = new FloatArrayType();
                }

                vec_val.clear();
                getVecValues(expr);
                cur_dim = ((ArrayType*)arrayType)->fetch();
                d = ((ArrayType*)arrayType)->fetch();
                d.push_back(1), d.erase(d.begin());

                for (int i = d.size() - 2; i >= 0; i--)
                    d[i] = d[i + 1] * d[i];

                offset = 0;
                arrayAddr = addr;
                lastAddr = arrayAddr;
                expr->genCode(0);
            }
            // 非数组类型处理
            else {
                expr->getself()->genCode();
                Operand* addr =
                    dynamic_cast<IdentifierSymbolEntry*>(se)->getAddr();
                Operand* src = expr->getself()->getOperand();

                // 在基本块中生成存储指令
                if (!se->isGlobal())
                    new StoreInstruction(addr, src, bb);
            }
        }

        // 如果是函数参数，生成存储指令
        if (se->isParam()) {
            BasicBlock* bb = builder->getInsertBB();
            new StoreInstruction(addr, temp, bb);
        }
    }

    // 递归处理下一个声明语句
    if (next != nullptr)
        next->genCode();
}

void IfStmt::genCode() {
    Function* func = builder->getInsertBB()->getParent();
    BasicBlock *then_bb, *end_bb = new BasicBlock(func);

    height = 1;
    cond->genCode();
    height = 0;

    // 如果条件为常量且为真，则生成then分支代码
    if (!cond->trueList().empty()) {
        then_bb = new BasicBlock(func);
        backPatch(cond->trueList(), then_bb);
        builder->setInsertBB(then_bb);
        thenStmt->genCode();
        then_bb = builder->getInsertBB();
        new UncondBrInstruction(end_bb, then_bb);
    }

    // 无论条件是否为常量，都要生成条件为假时的跳转
    backPatch(cond->falseList(), end_bb);
    builder->setInsertBB(end_bb);
}

void IfElseStmt::genCode() {
    Function* func = builder->getInsertBB()->getParent();
    BasicBlock *then_bb, *else_bb, *end_bb = new BasicBlock(func);

    height = 1;
    cond->genCode();
    height = 0;

    // 如果条件为常量且为真，则生成then分支代码
    if (!cond->trueList().empty()) {
        then_bb = new BasicBlock(func);
        backPatch(cond->trueList(), then_bb);
        builder->setInsertBB(then_bb);
        thenStmt->genCode();
        then_bb = builder->getInsertBB();
        new UncondBrInstruction(end_bb, then_bb);
    }

    // 如果条件为常量且为假，则生成else分支代码
    if (!cond->falseList().empty()) {
        else_bb = new BasicBlock(func);
        backPatch(cond->falseList(), else_bb);
        builder->setInsertBB(else_bb);
        elseStmt->genCode();
        else_bb = builder->getInsertBB();
        new UncondBrInstruction(end_bb, else_bb);
    }

    builder->setInsertBB(end_bb);
}

void ReturnStmt::genCode() {
    BasicBlock* bb = builder->getInsertBB();
    if (retValue == nullptr) {
        // 生成无返回值的返回指令
        new RetInstruction(nullptr, bb);
    } else {
        // 处理返回值为数组类型的情况
        if (retValue->getSymPtr()->getType()->isARRAY()) {
            cur_type =
                dynamic_cast<ArrayType*>(retValue->getSymPtr()->getType());
        }
        // 生成返回值的代码
        retValue->genCode();
        // 生成带返回值的返回指令
        new RetInstruction(retValue->getOperand(), bb);
    }
}

void AssignStmt::genCode() {
    // 如果左值为常量，则不生成代码
    if (lval->getType()->isConst()) {
        return;
    }
    BasicBlock* bb = builder->getInsertBB();
    // 生成右值的代码
    expr->genCode();
    // 处理左值为数组或指针的情况
    if (lval->getSymPtr()->getType()->isARRAY() ||
        lval->getSymPtr()->getType()->isPTR()) {
        cur_type = dynamic_cast<ArrayType*>(lval->getSymPtr()->getType());
        // 生成左值的代码
        lval->genCode();
        // 获取数组或指针的地址
        Operand* addr = arrayAddr;
        // 获取右值的操作数
        Operand* src = expr->getOperand();
        // 生成存储指令
        new StoreInstruction(addr, src, bb);
    } else {
        // 处理左值为标识符的情况
        Operand* addr =
            dynamic_cast<IdentifierSymbolEntry*>(lval->getSymPtr())->getAddr();
        // 获取右值的操作数
        Operand* src = expr->getOperand();
        // 生成存储指令
        new StoreInstruction(addr, src, bb);
    }
}

void ExprStmt::genCode() {
    expr->genCode();
}

void BreakStmt::genCode() {
    // assert(whileStack.size() != 0 && "Break not in While loop!");
    Function* func = builder->getInsertBB()->getParent();
    BasicBlock* bb = builder->getInsertBB();
    // 首先获取当前所在的while
    WhileStmt* whileStmt = (*whileStack.rbegin());
    // 获取结束block
    BasicBlock* end_bb = whileStmt->getEndBlock();
    // 在当前基本块中生成一条跳转到结束的语句
    new UncondBrInstruction(end_bb, bb);
    // 声明一个新的基本块用来插入后续的指令
    BasicBlock* nextBlock = new BasicBlock(func);
    builder->setInsertBB(nextBlock);
}

void ContinueStmt::genCode() {
    // assert(whileStack.size() != 0 && "Continue not in While loop!");
    Function* func = builder->getInsertBB()->getParent();
    BasicBlock* bb = builder->getInsertBB();
    // 首先获取当前所在的while
    WhileStmt* whileStmt = (*whileStack.rbegin());
    // 获取条件判断block
    BasicBlock* cond_bb = whileStmt->getCondBlock();
    // 在当前基本块中生成一条跳转到条件判断的语句
    new UncondBrInstruction(cond_bb, bb);
    // 声明一个新的基本块用来插入后续的指令
    BasicBlock* nextBlock = new BasicBlock(func);
    builder->setInsertBB(nextBlock);
}

void WhileStmt::genCode() {
    // 将当前的 WhileStmt 入栈
    whileStack.push_back(this);

    Function* func = builder->getInsertBB()->getParent();
    BasicBlock *stmt_bb, *cond_bb, *end_bb, *bb = builder->getInsertBB();

    // 创建条件判断、循环体和结束的基本块
    cond_bb = new BasicBlock(func);
    end_bb = new BasicBlock(func);

    // 设置全局变量，用于跳转
    condb = cond_bb;
    endb = end_bb;

    // 从当前基本块跳转到条件判断基本块
    new UncondBrInstruction(cond_bb, bb);

    // 设置插入点到条件判断基本块，生成条件判断部分的中间代码
    builder->setInsertBB(cond_bb);
    height = 1;
    cond->genCode();
    height = 0;

    // 回填条件为假时跳转到结束基本块的地址
    backPatch(cond->falseList(), end_bb);

    // 如果条件为真，生成循环体的中间代码
    if (!cond->trueList().empty()) {
        stmt_bb = new BasicBlock(func);
        backPatch(cond->trueList(), stmt_bb);
        builder->setInsertBB(stmt_bb);
        stmt->genCode();

        // 循环体完成后，生成无条件跳转到条件判断基本块的中间代码
        stmt_bb = builder->getInsertBB();
        new UncondBrInstruction(cond_bb, stmt_bb);
    }

    // 设置插入点到结束基本块
    builder->setInsertBB(end_bb);

    // 将当前的 WhileStmt 出栈
    whileStack.pop_back();
}

void FuncCallParamsNode::genCode() {
    is_fp = true;
    for (auto it : paramsList) {
        it->genCode();
    }
    is_fp = false;
}

void FuncCallNode::genCode() {
    IdentifierSymbolEntry* se =
        dynamic_cast<IdentifierSymbolEntry*>(funcId->getSymPtr());
    if (se->isLibFunc())
        builder->getUnit()->insertDecl(se);
    BasicBlock* bb = builder->getInsertBB();
    if (params == nullptr) {
        std::vector<Operand*> emptyList;
        new FuncCallInstruction(dst, emptyList, se, bb);
    } else {
        params->genCode();
        std::vector<Operand*> Oplist;
        for (auto it : params->getParams()) {
            Oplist.push_back(it->getOperand());
        }
        new FuncCallInstruction(dst, Oplist, se, bb);
    }
}

void FuncDefParamsNode::genCode() {
    Function* func = builder->getInsertBB()->getParent();
    BasicBlock* entry = func->getEntry();

    for (auto it : paramsList) {
        IdentifierSymbolEntry* se =
            dynamic_cast<IdentifierSymbolEntry*>(it->getSymPtr());
        Type* type;

        if (it->getIndices() != nullptr) {
            // 处理数组参数
            std::vector<int> dimensions;
            for (auto idx : it->getIndices()->getExprList()) {
                dimensions.push_back(idx->getSymPtr()->getValue());
            }
            dimensions.erase(dimensions.begin());

            auto elementType =
                ((ArrayType*)(it->getSymPtr()->getType()))->getElemType();
            ArrayType* newType;

            // 根据原始类型创建新的数组类型
            if (elementType->isInt()) {
                if (elementType->isConst())
                    newType = new ConstIntArrayType();
                else
                    newType = new IntArrayType();
            } else {
                if (elementType->isConst())
                    newType = new ConstFloatArrayType();
                else
                    newType = new FloatArrayType();
            }

            newType->SetDim(dimensions);
            type = new PointerType(newType);
            it->getSymPtr()->setType(type);
        } else {
            // 非数组参数
            type = new PointerType(it->getSymPtr()->getType());
        }

        // 将参数插入函数参数列表
        func->insertParams(it->getOperand());

        // 创建地址变量，并插入声明指令到函数入口基本块
        SymbolEntry* addr_se;
        if (it->getIndices() != nullptr)
            addr_se = new TemporarySymbolEntry(new PointerType(type),
                                               SymbolTable::getLabel());
        else
            addr_se = new TemporarySymbolEntry(type, SymbolTable::getLabel());

        Operand* addr = new Operand(addr_se);
        Instruction* alloca = new AllocaInstruction(addr, se);
        entry->insertFront(alloca);

        // 设置符号表项的地址
        se->setAddr(addr);

        // 将参数值存储到地址中
        Operand* src = it->getOperand();
        new StoreInstruction(addr, src, entry);
    }
}

void FuncDefNode::genCode() {
    Unit* unit = builder->getUnit();
    Function* func = new Function(unit, se);
    BasicBlock* entry = func->getEntry();
    builder->setInsertBB(entry);

    if (params != nullptr)
        params->genCode();
    stmt->genCode();

    for (auto bb = func->begin(); bb != func->end(); bb++) {
        // 清除ret之后的全部指令
        Instruction* index = (*bb)->begin();
        while (index != (*bb)->end()) {
            if (index->isRet()) {
                while (index != (*bb)->rbegin()) {
                    delete (index->getNext());
                }
                break;
            }
            index = index->getNext();
        }
        // 获取该块的最后一条指令
        Instruction* last = (*bb)->rbegin();
        // (*bb)->output();
        // 对于有条件的跳转指令，需要对其true分支和false分支都设置控制流关系
        if (last->isCond()) {
            BasicBlock* trueBB =
                dynamic_cast<CondBrInstruction*>(last)->getTrueBranch();
            BasicBlock* falseBB =
                dynamic_cast<CondBrInstruction*>(last)->getFalseBranch();
            (*bb)->addSucc(trueBB);
            (*bb)->addSucc(falseBB);
            trueBB->addPred(*bb);
            falseBB->addPred(*bb);
        }
        // 对于无条件的跳转指令，只需要对其目标基本块设置控制流关系即可
        if (last->isUncond()) {
            BasicBlock* dstBB =
                dynamic_cast<UncondBrInstruction*>(last)->getBranch();
            (*bb)->addSucc(dstBB);
            dstBB->addPred(*bb);
        }
    }
}

ExprNode* typeCast(ExprNode* fromNode, Type* to) {
    Type* from = fromNode->getType();

    // 检查是否可以进行类型转换
    assert(convertible(from, to));

    // 如果源类型和目标类型都是数组，则无需转换
    if (from->isARRAY() && to->isARRAY())
        return fromNode;

    // 针对特定的类型转换情况，直接返回源节点
    if (from != to &&
        !(from == TypeSystem::constIntType && to == TypeSystem::intType) &&
        !(from == TypeSystem::constFloatType && to == TypeSystem::floatType) &&
        !(from == TypeSystem::constBoolType &&
          to == TypeSystem::boolType))  // 需要进行类型转换
    {
        // 处理常量的类型转换，不再占用隐式转换AST节点
        if (fromNode->getSymPtr()->getType()->isConst()) {
            double val;

            // 根据目标类型进行不同的数值转换
            if (to == TypeSystem::boolType || to == TypeSystem::constBoolType)
                val = static_cast<bool>(fromNode->getValue());
            else if (to == TypeSystem::intType ||
                     to == TypeSystem::constIntType)
                val = static_cast<int>(fromNode->getValue());
            else {
                assert(to == TypeSystem::floatType ||
                       to == TypeSystem::constFloatType);
                val = static_cast<double>(fromNode->getValue());
            }

            // 如果源节点是常变量
            if (!fromNode->getSymPtr()->isConstant()) {
                assert(fromNode->getSymPtr()->isVariable());
                auto newSymPtr = new IdentifierSymbolEntry(
                    *(IdentifierSymbolEntry*)(fromNode->getSymPtr()));
                fromNode->setSymPtr(newSymPtr);
                fromNode->setDst(new Operand(newSymPtr));
            }

            // 更新源节点的类型和数值
            fromNode->getSymPtr()->setType(Var2Const(to));
            fromNode->getSymPtr()->setValue(val);

            return fromNode;
        }

        // 类型检查2：隐式转换
        fprintf(stderr, "隐式类型转换：%s -> %s\n", from->toStr().c_str(),
                to->toStr().c_str());

        SymbolEntry* se;

        // 如果目标类型是常量，则进行常量传播
        if (to->isConst()) {
            double val;

            // 根据目标类型进行不同的数值转换
            if (to == TypeSystem::constBoolType)
                val = static_cast<bool>(fromNode->getValue());
            else if (to == TypeSystem::constIntType)
                val = static_cast<int>(fromNode->getValue());
            else {
                assert(to == TypeSystem::constFloatType);
                val = static_cast<double>(fromNode->getValue());
            }

            se = new ConstantSymbolEntry(to, val);
        } else {
            // 创建一个临时符号表项
            se = new TemporarySymbolEntry(to, SymbolTable::getLabel());
        }

        // 返回进行隐式转换后的新节点
        return new ImplicitCast(se, fromNode);
    }

    // 无需进行类型转换，直接返回源节点
    return fromNode;
}

// 递归填充初始化节点
void InitNode::fill(int level, std::vector<int> dimensions, Type* type) {
    // 如果当前层级已经到达数组维度的最后一层，或者当前节点已经是叶子节点，则返回
    if (level == static_cast<int>(dimensions.size()) || leaf != nullptr) {
        if (leaf == nullptr) {
            setleaf(new Constant(new ConstantSymbolEntry(Var2Const(type), 0)));
        }
        return;
    }

    int capacity = 1, numLeaves = 0;

    // 计算当前维度及之后所有维度的容量
    for (size_t i = level + 1; i < dimensions.size(); i++) {
        capacity *= dimensions[i];
    }

    // 计算当前节点之前的叶子节点数量
    for (int i = static_cast<int>(leaves.size()) - 1; i >= 0; i--) {
        if (leaves[i]->isLeaf()) {
            numLeaves++;
        } else {
            break;
        }
    }

    // 添加叶子节点，使其数量满足当前维度的容量
    while (numLeaves % capacity) {
        InitNode* newConstNode = new InitNode(true);
        newConstNode->setleaf(
            new Constant(new ConstantSymbolEntry(Var2Const(type), 0)));
        addleaf(newConstNode);
        numLeaves++;
    }

    int currentSize = getSize(capacity);

    // 添加初始化节点，使其数量满足当前维度
    while (currentSize < dimensions[level]) {
        InitNode* newNode = new InitNode(true);
        addleaf(newNode);
        currentSize++;
    }

    // 递归填充子节点
    for (auto leaf : leaves) {
        leaf->fill(level + 1, dimensions, type);
    }
}

// 计算当前节点及其子节点的总数量
int InitNode::getSize(int nextDimensionCapacity) {
    int numLeaves = 0, currentFit = 0;

    for (auto leaf : leaves) {
        if (leaf->leaf != nullptr) {
            numLeaves++;
        } else {
            currentFit++;
        }

        // 如果已经填满了当前维度的容量，则重新开始计数
        if (numLeaves == nextDimensionCapacity) {
            currentFit++;
            numLeaves = 0;
        }
    }

    return currentFit + numLeaves / nextDimensionCapacity;
}