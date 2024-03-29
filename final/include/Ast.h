#ifndef __AST_H__
#define __AST_H__

#include <fstream>
#include <map>
#include <vector>
#include "BasicBlock.h"
#include "Operand.h"
#include "Type.h"

class SymbolEntry;
class Type;
class Unit;
class Function;
class BasicBlock;
class Instruction;
class IRBuilder;

class Node {
private:
    static int counter;
    int seq;

protected:
    std::vector<Instruction*> true_list;
    std::vector<Instruction*> false_list;
    static IRBuilder* builder;
    void backPatch(std::vector<Instruction*>& list, BasicBlock* bb);
    std::vector<Instruction*> merge(std::vector<Instruction*>& list1,
                                    std::vector<Instruction*>& list2);

public:
    Node();
    int getSeq() const { return seq; };
    static void setIRBuilder(IRBuilder* ib) { builder = ib; };
    virtual void output(int level){};
    virtual void genCode(){};
    std::vector<Instruction*>& trueList() { return true_list; }
    std::vector<Instruction*>& falseList() { return false_list; }
    virtual ~Node(){};
};

class ExprNode : public Node {
protected:
    SymbolEntry* symbolEntry;
    Operand* dst;
    bool is_array_ele = false;

public:
    ExprNode(SymbolEntry* symbolEntry, bool be_array = false)
        : symbolEntry(symbolEntry),
          dst(new Operand(symbolEntry)),
          is_array_ele(be_array){};
    Type* getType();
    double getValue() { return symbolEntry->getValue(); };
    Operand* getOperand() { return dst; };
    SymbolEntry* getSymPtr() { return symbolEntry; };
    void setSymPtr(SymbolEntry* newSymPtr) { symbolEntry = newSymPtr; };
    void setDst(Operand* newDst);
    ~ExprNode(){};
};

class UnaryExpr : public ExprNode {
private:
    int op;
    ExprNode* expr;

public:
    enum { PLUS, MINUS, NOT };
    UnaryExpr(SymbolEntry* se, int op, ExprNode* expr)
        : ExprNode(se), op(op), expr(expr){};
    void output(int level);
    void genCode();
    ~UnaryExpr() { delete expr; };
};

class BinaryExpr : public ExprNode {
private:
    int op;
    ExprNode *expr1, *expr2;

public:
    enum {
        ADD,
        SUB,
        MUL,
        DIV,
        MOD,
        LESS,
        GREATER,
        LESSEQ,
        GREATEREQ,
        EQ,
        NEQ,
        AND,
        OR
    };
    BinaryExpr(SymbolEntry* se, int op, ExprNode* expr1, ExprNode* expr2)
        : ExprNode(se), op(op), expr1(expr1), expr2(expr2){};
    void output(int level);
    void genCode();
    ~BinaryExpr() {
        delete expr1;
        delete expr2;
    };
};

class Constant : public ExprNode {
public:
    Constant(SymbolEntry* se) : ExprNode(se){};
    void output(int level);
    void genCode();
};

class ImplicitCast : public ExprNode {
private:
    ExprNode* expr;

public:
    ImplicitCast(SymbolEntry* se, ExprNode* expr) : ExprNode(se), expr(expr){};
    void output(int level);
    void genCode();
    ~ImplicitCast() { delete expr; };
};

class StmtNode : public Node {};

class IndicesNode : public StmtNode {
private:
    std::vector<ExprNode*> exprList;

public:
    IndicesNode(){};
    void addNew(ExprNode* new_expr) { exprList.push_back(new_expr); };
    void addBefore(ExprNode* new_expr) {
        exprList.insert(exprList.begin(), new_expr);
    };
    void output(int level);
    std::vector<ExprNode*> getExprList() { return exprList; };
    int get_len() { return exprList.size(); };
    void genCode();
    ~IndicesNode() {
        for (auto expr : exprList)
            delete expr;
    }
};

class Id : public ExprNode {
private:
    IndicesNode* indices;
    bool is_array = false, is_array_ele = false;
    bool isleft;
    bool is_FP;

public:
    Id(SymbolEntry* se,
       bool be_array = false,
       bool isleft = false,
       bool is_fp = false)
        : ExprNode(se, be_array) {
        indices = nullptr;
        is_array_ele = se->getType()->isARRAY() && be_array;
        is_array = se->getType()->isARRAY();
        this->isleft = isleft;
        is_FP = is_fp;
    };
    void setIndices(IndicesNode* new_indices) { indices = new_indices; };
    IndicesNode* getIndices() { return indices; };
    int getidxsize() { return indices->getExprList().size(); };
    int getlen() { return indices != nullptr; };
    void output(int level);
    void SetLeft() { isleft = true; };
    bool is_Array() { return is_array; };
    bool is_Array_Ele() { return is_array_ele; };
    void Set_Fp() { is_FP = true; };
    void genCode();
    ArrayType* get_Array_Type() {
        return (ArrayType*)(getSymPtr()->getType());
    };
    ~Id() {
        if (indices != nullptr)
            delete indices;
    };
};

class InitNode : public StmtNode {
private:
    bool isconst;
    ExprNode* leaf;
    std::vector<InitNode*> leaves;
    int cur_size = 0;

public:
    InitNode(bool isconst = false) : isconst(isconst), leaf(nullptr){};
    void addleaf(InitNode* next) { leaves.push_back(next); };
    void setleaf(ExprNode* leaf1) {
        leaf = leaf1;
        leaves.clear();
    };
    bool isLeaf() { return leaves.empty(); };
    void fill(int level, std::vector<int> d, Type* type);
    int getSize(int d_nxt);
    bool isConst() const { return isconst; }
    void output(int level);
    void genCode(int level);
    std::vector<InitNode*> getleaves() { return leaves; };
    ExprNode* getself() { return leaf; };
    ~InitNode() {
        if (leaf != nullptr)
            delete leaf;
        for (auto _leaf : leaves)
            delete _leaf;
    }
};

class CompoundStmt : public StmtNode {
private:
    StmtNode* stmt;

public:
    CompoundStmt(StmtNode* stmt) : stmt(stmt){};
    void output(int level);
    void genCode();
    StmtNode* getStmt() { return stmt; };
    ~CompoundStmt() {
        if (stmt != nullptr)
            delete stmt;
    };
};

class SeqStmt : public StmtNode {
private:
    std::vector<StmtNode*> stmts;

public:
    SeqStmt(StmtNode* stmt) : stmts{stmt} {};
    void output(int level);
    void genCode();
    void addChild(StmtNode* next) { stmts.push_back(next); };
    ~SeqStmt() {
        for (auto stmt : stmts)
            delete stmt;
    };
};

class DeclStmt : public StmtNode {
private:
    Id* id;
    InitNode* expr;
    DeclStmt* next;
    bool BeConst;
    bool BeArray;
    DeclStmt* head;

public:
    DeclStmt(Id* id,
             InitNode* expr = nullptr,
             bool isConst = false,
             bool isArray = false);
    void setNext(DeclStmt* next) { this->next = next; };
    DeclStmt* getNext() { return this->next; };
    void setHead(DeclStmt* head) { this->head = head; };
    DeclStmt* getHead() { return head; };
    void output(int level);
    void genCode();
    ~DeclStmt() {
        delete id;
        if (expr != nullptr)
            delete expr;
        if (next != nullptr)
            delete next;
    };
};

class IfStmt : public StmtNode {
private:
    ExprNode* cond;
    StmtNode* thenStmt;

public:
    IfStmt(ExprNode* cond, StmtNode* thenStmt)
        : cond(cond), thenStmt(thenStmt){};
    void output(int level);
    void genCode();
    ~IfStmt() {
        delete cond;
        delete thenStmt;
    };
};

class IfElseStmt : public StmtNode {
private:
    ExprNode* cond;
    StmtNode* thenStmt;
    StmtNode* elseStmt;

public:
    IfElseStmt(ExprNode* cond, StmtNode* thenStmt, StmtNode* elseStmt)
        : cond(cond), thenStmt(thenStmt), elseStmt(elseStmt){};
    void output(int level);
    void genCode();
    ~IfElseStmt() {
        delete cond;
        delete thenStmt;
        delete elseStmt;
    };
};

class ReturnStmt : public StmtNode {
private:
    ExprNode* retValue;

public:
    ReturnStmt(ExprNode* retValue) : retValue(retValue){};
    void output(int level);
    void genCode();
    ~ReturnStmt() { delete retValue; };
};

class AssignStmt : public StmtNode {
private:
    ExprNode* lval;
    ExprNode* expr;

public:
    AssignStmt(ExprNode* lval, ExprNode* expr) : lval(lval), expr(expr) {
        ((Id*)(lval))->SetLeft();
    };
    void output(int level);
    void genCode();
    ~AssignStmt() {
        delete lval;
        delete expr;
    };
};

class ExprStmt : public StmtNode {
private:
    ExprNode* expr;

public:
    ExprStmt(ExprNode* expr) : expr(expr){};
    void output(int level);
    void genCode();
    ~ExprStmt() { delete expr; };
};

class NullStmt : public StmtNode {
public:
    NullStmt(){};
    void output(int level);
    void genCode(){};
    ~NullStmt(){};
};

class BreakStmt : public StmtNode {
public:
    BreakStmt(){};
    void output(int level);
    void genCode();
    ~BreakStmt(){};
};

class ContinueStmt : public StmtNode {
public:
    ContinueStmt(){};
    void output(int level);
    void genCode();
    ~ContinueStmt(){};
};

class WhileStmt : public StmtNode {
private:
    ExprNode* cond;
    StmtNode* stmt;
    BasicBlock* condb;
    BasicBlock* endb;

public:
    WhileStmt(ExprNode* cond, StmtNode* stmt) : cond(cond), stmt(stmt){};
    void output(int level);
    void genCode();
    void SetCondBlock(BasicBlock* b) { condb = b; };
    void SetEndBlock(BasicBlock* b) { endb = b; };
    BasicBlock* getCondBlock() const { return condb; };
    BasicBlock* getEndBlock() const { return endb; };
    ~WhileStmt() {
        delete cond;
        delete stmt;
    };
};
static std::vector<WhileStmt*> whileStack;
class FuncCallParamsNode : public StmtNode {
private:
    std::vector<ExprNode*> paramsList;

public:
    FuncCallParamsNode(){};
    std::vector<Type*> getParamsType();
    std::vector<ExprNode*> getParams() { return paramsList; };
    void setParams(std::vector<ExprNode*> params) { paramsList = params; };
    void addChild(ExprNode* next) { paramsList.push_back(next); };
    void output(int level);
    void genCode();
    ~FuncCallParamsNode() {
        for (auto param : paramsList)
            delete param;
    }
};

class FuncCallNode : public ExprNode {
private:
    Id* funcId;
    FuncCallParamsNode* params;

public:
    FuncCallNode(SymbolEntry* se, Id* id, FuncCallParamsNode* params)
        : ExprNode(se), funcId(id), params(params){};
    void output(int level);
    void genCode();
    ~FuncCallNode() {
        delete funcId;
        if (params != nullptr)
            delete params;
    }
};

class FuncDefParamsNode : public StmtNode {
private:
    std::vector<Id*> paramsList;

public:
    FuncDefParamsNode(){};
    std::vector<Type*> getParamsType();
    void output(int level);
    void addChild(Id* next);
    void genCode();
    ~FuncDefParamsNode() {
        for (auto param : paramsList)
            delete param;
    }
};

class FuncDefNode : public StmtNode {
private:
    SymbolEntry* se;
    FuncDefParamsNode* params;
    StmtNode* stmt;

public:
    FuncDefNode(SymbolEntry* se,
                FuncDefParamsNode* params,
                StmtNode* stmt,
                bool needRet)
        : se(se), params(params), stmt(stmt){};
    void output(int level);
    void genCode();
    ~FuncDefNode() {
        if (params != nullptr)
            delete params;
        delete stmt;
    };
};

class Ast {
private:
    Node* root;

public:
    Ast() { root = nullptr; }
    void setRoot(Node* n) { root = n; }
    void output();
    void genCode(Unit* unit);
    ~Ast() { delete root; }
};

ExprNode* typeCast(ExprNode* from, Type* to);

#endif
