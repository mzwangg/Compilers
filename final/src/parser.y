%code top{
    #include <iostream>
    #include <assert.h>
    #include <vector>
    #include "parser.h"
    extern Ast ast;
    int yylex();
    int yyerror( char const *);
    Type *curType = nullptr;
    Type *retType = nullptr;
    int whileDepth = 0;
    std::vector<int> arrayIdx;
    bool needRet = false;
}

%code requires {
    #include "Ast.h"
    #include "SymbolTable.h"
    #include "Type.h"
}

%union {
    int itype;
    float ftype;
    char *strtype;
    StmtNode *stmttype;
    ExprNode *exprtype; 
    Type *type;
}


%start CompUnit
%token INT FLOAT CONST VOID IF WHILE RETURN ELSE BREAK CONTINUE
%token <strtype> ID 
%token ADD SUB MUL DIV MOD
%token OR AND 
%token ASSIGN
%token EQ NEQ LESS LESSEQ GREATER GREATEREQ
%token NOT
%token <itype> INTEGERCONST
%token <ftype> FLOATCONST
%token COMMA SEMICOLON LPAREN RPAREN LBRACE RBRACE LBRACKET RBRACKET


%nterm <stmttype> Stmts Stmt AssignStmt ExprStmt BlockStmt NullStmt IfStmt WhileStmt BreakStmt ContinueStmt ReturnStmt DeclStmt 
%nterm <stmttype> VarDeclStmt ConstDeclStmt VarDef ConstDef VarDefList ConstDefList ArrayConstIndices ArrayVarIndices
%nterm <stmttype> FuncFParams FuncRParams FuncDef 
%nterm <exprtype> LRVal Exp ConstExp Cond PrimaryExpr UnaryExpr MulDivModExpr AddSubExpr RelExpr LEqExpr LAndExpr LOrExpr 
%nterm <stmttype> InitVal ConstInitVal InitValList ConstInitValList FuncArrayIndices
%nterm <exprtype> FuncFParam
%nterm <type> Type 

%precedence THEN
%precedence ELSE
%%

CompUnit
    : Stmts {
        ast.setRoot($1);
    }
    ;

Stmts
    : Stmt {$$ = new SeqStmt($1);}
    | Stmts Stmt{
        ((SeqStmt*)$1)->addChild($2);
        $$ = $1;
    }
    ;

Stmt
    : AssignStmt {$$=$1;}
    | ExprStmt {$$=$1;}
    | BlockStmt {$$=$1;}
    | NullStmt {$$=$1;}
    | IfStmt {$$=$1;}
    | WhileStmt {$$=$1;}
    | BreakStmt {$$=$1;}
    | ContinueStmt {$$=$1;}
    | ReturnStmt {$$=$1;}
    | DeclStmt {$$=$1;}
    | FuncDef {$$=$1;}
    ;

AssignStmt
    : LRVal ASSIGN Exp SEMICOLON {
        assert(convertible($3->getType(), $1->getType()));
        ExprNode *t = typeCast($3, $1->getType());
        if($1->getType()->isConst()) {
            fprintf(stderr, "can't assign a constant which can only be read");
            assert(!$1->getType()->isConst());
        }
        $$ = new AssignStmt($1, t); 
    }
    ;

IfStmt
    : IF LPAREN Cond RPAREN Stmt %prec THEN {
        $$ = new IfStmt($3, $5);
    }
    | IF LPAREN Cond RPAREN Stmt ELSE Stmt {
        $$ = new IfElseStmt($3, $5, $7);
    }
    ;

WhileStmt
    : WHILE LPAREN Cond RPAREN {
        whileDepth++;
    } Stmt {
        $$ = new WhileStmt($3, $6);
        whileDepth--;
    }
    ;

BreakStmt
    : BREAK SEMICOLON {
        // 类型检查8：while-break
        assert(whileDepth && "\"break\" not in whilestmt\n");
        $$ = new BreakStmt();
    }
    ;

ContinueStmt
    : CONTINUE SEMICOLON {
        // 类型检查8：while-continue
        assert(whileDepth && "\"continue\" not in whilestmt\n");
        $$ = new ContinueStmt();
    }
    ;

ReturnStmt
    : RETURN SEMICOLON {
        // 类型检查6：return类型检查
        if(!retType->isVoid())
        {
            fprintf(stderr, "retType mismatch: return \"%s\", expected \"%s\"\n", TypeSystem::voidType->toStr().c_str(), retType->toStr().c_str());
            assert(retType->isVoid());
        }
        $$ = new ReturnStmt(nullptr);
        needRet = false;
    }
    | RETURN Exp SEMICOLON {
        // 类型检查6：return类型检查
        if(!convertible($2->getType(), retType))
        {
            fprintf(stderr, "retType mismatch: return \"%s\", expected \"%s\"\n", $2->getType()->toStr().c_str(), retType->toStr().c_str());
            assert(convertible($2->getType(), retType));
        }
        ExprNode *t = typeCast($2, retType);
        $$ = new ReturnStmt(t);
        needRet = false;
    }
    ;

NullStmt
    : SEMICOLON {
        $$ = new NullStmt();
    }
    ;

ExprStmt
    : Exp SEMICOLON {
        $$ = new ExprStmt($1);
    }
    ;

DeclStmt
    : VarDeclStmt {$$ = $1;}
    | ConstDeclStmt {$$ = $1;}
    ;

ConstDeclStmt
    : CONST Type ConstDefList SEMICOLON {
        $$ = ((DeclStmt*)$3)->getHead();
    }
    ;

ConstDefList
    : ConstDefList COMMA ConstDef {
        ((DeclStmt*)$3)->setHead(((DeclStmt*)$1)->getHead());
        ((DeclStmt*)$1)->setNext((DeclStmt*)$3);        
        $$ = $3;
    }
    | ConstDef {
        ((DeclStmt*)$1)->setHead((DeclStmt*)$1);
        $$ = $1; 
    }
    ;

Type
    : INT {
        $$ = curType = TypeSystem::intType;
    }
    | FLOAT {
        $$ = curType = TypeSystem::floatType;
    }
    | VOID {
        $$ = curType = TypeSystem::voidType;
    }
    ;

ConstDef
    : ID ASSIGN ConstInitVal {
        curType = Var2Const(curType);
        ExprNode *t3 = typeCast((dynamic_cast<InitNode*>($3))->getself(), curType);
        (dynamic_cast<InitNode*>($3))->setleaf(t3);
        SymbolEntry *se = new IdentifierSymbolEntry(curType, $1, identifiers->getLevel());
        se->setValue((dynamic_cast<InitNode*>($3))->getself()->getValue());
        int ret = identifiers->install($1, se);
        // 类型检查1：变量在同一作用域下重复声明
        if(!ret)
        {
            fprintf(stderr, "identifier \"%s\" is redefined\n", (char*)$1);
            assert(ret);
        }
        $$ = new DeclStmt(new Id(se), (dynamic_cast<InitNode*>($3)));
        delete []$1;
    }
    | ID ArrayConstIndices ASSIGN ConstInitVal {
        Type* type;
        if(curType->isInt())
            type =  new ConstIntArrayType();
        else
            type =  new ConstFloatArrayType();
        for(auto exp : dynamic_cast<IndicesNode*>($2)->getExprList())
            dynamic_cast<ArrayType*>(type)->addDim((int)exp->getValue());
        SymbolEntry *se_var_list = new IdentifierSymbolEntry(type, $1, identifiers->getLevel());
        auto ret = identifiers->install($1, se_var_list);;
        // 类型检查1：变量在同一作用域下重复声明
        if(!ret)
        {
            fprintf(stderr, "identifier \"%s\" is redefined\n", (char*)$1);
            assert(ret);
        }
        Id* new_Id = new Id(se_var_list);
        new_Id->setIndices(dynamic_cast<IndicesNode*>($2));
        $$ = new DeclStmt(new_Id, dynamic_cast<InitNode*>($4), true, true);
        delete []$1;
    }
    ;

ConstInitVal
    : ConstExp {
        InitNode* new_exp = new InitNode(true);
        new_exp->setleaf(dynamic_cast<ExprNode*>($1));
        $$ = new_exp;
    }
    | LBRACE ConstInitValList RBRACE {
        $$ = $2;
    }
    | LBRACE RBRACE {
        $$ = new InitNode(true);
    }
    ;

ConstInitValList
    : ConstInitVal {
        InitNode* new_expr = new InitNode(true);
        new_expr->addleaf(dynamic_cast<InitNode*>($1));
        $$ = new_expr;
    }
    | ConstInitValList COMMA ConstInitVal {
        InitNode* this_expr = dynamic_cast<InitNode*>($1);
        this_expr->addleaf(dynamic_cast<InitNode*>($3));
        $$ = this_expr;
    }
    ;

VarDeclStmt
    : 
    Type VarDefList SEMICOLON {
        $$ = ((DeclStmt*)$2)->getHead();
    }
    ;

VarDefList
    : VarDefList COMMA VarDef {
        ((DeclStmt*)$3)->setHead(((DeclStmt*)$1)->getHead());
        ((DeclStmt*)$1)->setNext((DeclStmt*)$3);
        $$ = $3;
    } 
    | VarDef {
        ((DeclStmt*)$1)->setHead((DeclStmt*)$1);
        $$ = $1;
    }
    ;

VarDef
    : ID {
        SymbolEntry *se = new IdentifierSymbolEntry(curType, $1, identifiers->getLevel());
        int ret = identifiers->install($1, se);
        // 类型检查1：变量在同一作用域下重复声明
        if(!ret)
        {
            fprintf(stderr, "identifier \"%s\" is redefined\n", (char*)$1);
            assert(ret);
        }
        $$ = new DeclStmt(new Id(se));
        delete []$1;
    }
    | ID ASSIGN InitVal {
        assert(convertible((dynamic_cast<InitNode*>($3))->getself()->getType(), curType));
        ExprNode *t3 = typeCast((dynamic_cast<InitNode*>($3))->getself(), curType);
        (dynamic_cast<InitNode*>($3))->setleaf(t3);
        SymbolEntry *se = new IdentifierSymbolEntry(curType, $1, identifiers->getLevel());
        int ret = identifiers->install($1, se);
        // 类型检查1：变量在同一作用域下重复声明
        if(!ret)
        {
            fprintf(stderr, "identifier \"%s\" is redefined\n", (char*)$1);
            assert(ret);
        }
        if((dynamic_cast<InitNode*>($3))->getself()->getType()->isConst())
            se->setValue((dynamic_cast<InitNode*>($3))->getself()->getValue());
        $$ = new DeclStmt(new Id(se), (dynamic_cast<InitNode*>($3)));
        delete []$1;
    }
    | ID ArrayConstIndices {
        Type* type;
        if (curType->isInt())
            type = new IntArrayType();
        else 
            type = new FloatArrayType();
        for(auto exp : dynamic_cast<IndicesNode*>($2)->getExprList())
            dynamic_cast<ArrayType*>(type)->addDim((int)exp->getValue());
        SymbolEntry *se_var_list = new IdentifierSymbolEntry(type, $1, identifiers->getLevel());
        int ret = identifiers->install($1, se_var_list);
        // 类型检查1：变量在同一作用域下重复声明
        if (!ret)
        {
            fprintf(stderr, "identifier \"%s\" is redefined\n", (char*)$1);
            assert(ret);
        }
        Id* new_Id = new Id(se_var_list);
        new_Id->setIndices(dynamic_cast<IndicesNode*>($2));
        $$ = new DeclStmt(new_Id, nullptr, false, true);
        delete []$1;
    }
    | ID ArrayConstIndices ASSIGN InitVal {
        Type* type;
        if (curType->isInt())
            type = new IntArrayType();
        else 
            type = new FloatArrayType();
        for(auto exp : dynamic_cast<IndicesNode*>($2)->getExprList())
            dynamic_cast<ArrayType*>(type)->addDim((int)exp->getValue());
        SymbolEntry *se_var_list = new IdentifierSymbolEntry(type, $1, identifiers->getLevel());
        int ret = identifiers->install($1, se_var_list);
        // 类型检查1：变量在同一作用域下重复声明
        if (!ret)
        {
            fprintf(stderr, "identifier \"%s\" is redefined\n", (char*)$1);
            assert(ret);
        }
        Id* new_Id = new Id(se_var_list);
        new_Id->setIndices(dynamic_cast<IndicesNode*>($2));
        $$ = new DeclStmt(new_Id, dynamic_cast<InitNode*>($4), false, true);
        delete []$1;
    }
    ;

ArrayConstIndices
    : ArrayConstIndices LBRACKET ConstExp RBRACKET {
        IndicesNode* node = dynamic_cast<IndicesNode*>($1);
        node->addNew($3);
        $$ = node;
    }
    | LBRACKET ConstExp RBRACKET {
        IndicesNode* node = new IndicesNode();
        node->addNew($2);
        $$ = node;
    }
    ;

InitVal 
    : Exp {
        InitNode* new_exp = new InitNode(false);
        assert(convertible(dynamic_cast<ExprNode*>($1)->getType(), curType));
        ExprNode* new_expr = typeCast(dynamic_cast<ExprNode*>($1), curType);
        new_exp->setleaf(new_expr);
        $$ = new_exp;
    }
    | LBRACE InitValList RBRACE {
        $$ = $2;;
    }
    | LBRACE RBRACE {
        $$ = new InitNode(true);
    }
    ;

InitValList
    : InitVal {
        InitNode* new_expr = new InitNode(false);
        new_expr->addleaf(dynamic_cast<InitNode*>($1));
        $$ = new_expr;
    }
    | InitValList COMMA InitVal {
        InitNode* this_expr = dynamic_cast<InitNode*>($1);
        this_expr->addleaf(dynamic_cast<InitNode*>($3));
        $$ = this_expr;
    }
    ;

ArrayVarIndices
    : ArrayVarIndices LBRACKET Exp RBRACKET {
        IndicesNode* node = dynamic_cast<IndicesNode*>($1);
        node->addNew($3);
        $$ = node;
    }
    | LBRACKET Exp RBRACKET {
        IndicesNode* node = new IndicesNode();
        node->addNew($2);
        $$ = node;
    }
    ;

FuncDef
    :
    Type ID {
        retType = $1;
        needRet = true;
        identifiers = new SymbolTable(identifiers);
    }
    LPAREN FuncFParams{
        Type *FuncType = ($5 != nullptr) ? new FunctionType($1, ((FuncDefParamsNode*)$5)->getParamsType()) : new FunctionType($1, {});
        SymbolEntry *se = new IdentifierSymbolEntry(FuncType, $2, identifiers->getLevel() - 1);
        int ret = identifiers->getPrev()->install($2, se);
        // 类型检查4：参数类型相同的函数重定义
        if(!ret)
        {
            fprintf(stderr, "function \"%s\" is redefined\n", (char*)$2);
            assert(ret);
        }
    }
    RPAREN BlockStmt{
        // 类型检查6：缺少return
        if(needRet)
        {
            if($1->isVoid())
                ((SeqStmt*)(((CompoundStmt*)$8)->getStmt()))->addChild(new ReturnStmt(nullptr));
            else
            {
                fprintf(stderr, "missing return stmt\n");
                assert(!needRet);
            }
        }
        SymbolEntry *se =  ($5 != nullptr) ? identifiers->lookup($2, true, ((FuncDefParamsNode*)$5)->getParamsType()):identifiers->lookup($2, true, {});
        assert(se != nullptr);
        $$ = new FuncDefNode(se, dynamic_cast<FuncDefParamsNode*>($5), $8, needRet);
        SymbolTable *top = identifiers;
        identifiers = identifiers->getPrev();
        delete top;
        delete []$2;
    }
    ;

FuncFParams
    : FuncFParams COMMA FuncFParam {
       ((FuncDefParamsNode*)$1)->addChild((Id*)$3);
       $$ = $1;
    }
    | FuncFParam {
        $$ = new FuncDefParamsNode();
        ((FuncDefParamsNode*)$$)->addChild((Id*)$1);
    }
    | %empty {
        $$ = nullptr;
    }
    ;

FuncFParam
    : Type ID {
        SymbolEntry *se = new IdentifierSymbolEntry($1, $2, identifiers->getLevel());
        identifiers->install($2, se);
        $$ = new Id(se);
        delete []$2;
    }
    | Type ID FuncArrayIndices {
        ArrayType* arrayType; 
        if($1==TypeSystem::intType){
            arrayType = new IntArrayType();
        } else if($1==TypeSystem::floatType){
            arrayType = new FloatArrayType();
        }
        arrayType->SetDim(arrayIdx);
        arrayType->setlenth();
        arrayIdx.clear();
        SymbolEntry *se = new IdentifierSymbolEntry(arrayType, $2, identifiers->getLevel());
        identifiers->install($2, se);
        Id* id = new Id(se);
        id->setIndices(dynamic_cast<IndicesNode*>($3));
        ((IdentifierSymbolEntry*)se)->setLabel();
        ((IdentifierSymbolEntry*)se)->setAddr(new Operand(se));
        $$ = id;
        delete []$2;
    }
    ;
    
FuncArrayIndices
    : FuncArrayIndices LBRACKET ConstExp RBRACKET {
        dynamic_cast<IndicesNode*>($1)->addNew($3);
        $$ = $1;
        arrayIdx.push_back(-1);
    }
    | LBRACKET RBRACKET {
        SymbolEntry *addDim = new ConstantSymbolEntry(TypeSystem::constIntType, -1);
        IndicesNode* indice = new IndicesNode();
        indice->addNew(new Constant(addDim));
        $$ = indice;
        arrayIdx.push_back(-1);
    }
    ;

BlockStmt
    : LBRACE {
        identifiers = new SymbolTable(identifiers);
    } 
    Stmts RBRACE {
        $$ = new CompoundStmt($3);
        SymbolTable *top = identifiers;
        identifiers = identifiers->getPrev();
        delete top;
    }
    | LBRACE RBRACE {
        $$ = new CompoundStmt(nullptr);
    }
    ;

Exp
    :
    AddSubExpr {$$ = $1;}
    ;

Cond
    :
    LOrExpr {
        $$ = typeCast($1, logicMax($1->getType(), $1->getType()));
    }
    ;

LRVal
    : ID {
        SymbolEntry *se;
        se = identifiers->lookup($1);
        // 类型检查1：变量未声明
        if(se == nullptr)
        {
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)$1);
            assert(se != nullptr);
        }
        $$ = new Id(se);
        delete []$1;
    }
    | ID ArrayVarIndices {
        SymbolEntry *se;
        se = identifiers->lookup($1);
        // 类型检查1：变量未声明
        if(se == nullptr)
        {
            fprintf(stderr, "identifier \"%s\" is undefined\n", (char*)$1);
            assert(se != nullptr);
        }
        Id* new_id = new Id(se, true);
        new_id->setIndices(dynamic_cast<IndicesNode*>($2));
        $$ = new_id;
        delete []$1;
    }
    ; 

PrimaryExpr
    : LPAREN Exp RPAREN {
        $$ = $2;
    }
    | LRVal {
        $$ = $1;
    }
    | INTEGERCONST {
        SymbolEntry *se = new ConstantSymbolEntry(TypeSystem::constIntType, $1);
        $$ = new Constant(se);
    }
    | FLOATCONST {
        SymbolEntry *se = new ConstantSymbolEntry(TypeSystem::constFloatType, $1);
        $$ = new Constant(se);
    }
    ;

UnaryExpr 
    : PrimaryExpr {$$ = $1;}
    | ID LPAREN FuncRParams RPAREN {
        std::vector<Type *> paramsType =  ($3 != nullptr) ? ((FuncCallParamsNode*)$3)->getParamsType() : std::vector<Type *>{};
        SymbolEntry *se = identifiers->lookup($1, true, paramsType);
        // 类型检查4、5：函数未声明+参数不匹配
        if(se == nullptr)
        {
            fprintf(stderr, "function \"%s\" is undefined or params mismatch\n", (char*)$1);
            assert(se != nullptr);
        }
        //实参类型隐式转化
        if($3 != nullptr)
        {
            std::vector<ExprNode *> RParams = dynamic_cast<FuncCallParamsNode *>$3->getParams();
            std::vector<Type *> FParamsType = dynamic_cast<FunctionType *>(se->getType())->getParamsType();
            for(size_t i = 0; i != RParams.size(); i++)
            {
                if(!FParamsType[i]->isARRAY())
                    RParams[i] = typeCast(RParams[i], FParamsType[i]);
            }
            dynamic_cast<FuncCallParamsNode *>$3->setParams(RParams);
        }
        Type *retType = dynamic_cast<FunctionType *>(se->getType())->getRetType();
        SymbolEntry *t = new TemporarySymbolEntry(retType, SymbolTable::getLabel());
        $$ = new FuncCallNode(t, new Id(se), (FuncCallParamsNode*)$3);
    }
    | ADD UnaryExpr {
        $$ = $2;
    }
    | SUB UnaryExpr {
        Type *resType = unaryMax($2->getType(), TypeSystem::MINUS);
        ExprNode *t = typeCast($2, resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, -(t->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new UnaryExpr(se, UnaryExpr::MINUS, t);
    }
    | NOT UnaryExpr {
        Type *resType = unaryMax($2->getType(), TypeSystem::NOT);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, !($2->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new UnaryExpr(se, UnaryExpr::NOT, $2);
    }
    ;

FuncRParams 
    : Exp {
        FuncCallParamsNode *node = new FuncCallParamsNode();
        node->addChild($1);
        $$ = node;
    }
    | FuncRParams COMMA Exp {
        FuncCallParamsNode *node = dynamic_cast<FuncCallParamsNode*>($1);
        node->addChild($3);
        $$ = node;
    }
    | %empty {
       $$ = nullptr;
    }
    ;

MulDivModExpr
    : UnaryExpr {
        $$ = $1;
        // $$->setType(calcMax($1->getType(), $1->getType()));
    }
    | MulDivModExpr MUL UnaryExpr {
        Type *resType = calcMax($1->getType(), $3->getType());
        ExprNode *t1 = typeCast($1, resType), *t3 = typeCast($3, resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) * (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::MUL, t1, t3);
    }
    | MulDivModExpr DIV UnaryExpr {
        Type *resType = calcMax($1->getType(), $3->getType());
        ExprNode *t1 = typeCast($1, resType), *t3 = typeCast($3, resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) / (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::DIV, t1, t3);
    }
    | MulDivModExpr MOD UnaryExpr {
        // 类型检查3：非整数类型参与取模运算
        if(!($1->getType()->isInt() && $3->getType()->isInt()))
        {
            fprintf(stderr, "%s mod %s\n", $1->getType()->toStr().c_str(), $3->getType()->toStr().c_str());
            assert($1->getType()->isInt() && $3->getType()->isInt());
        }
        Type *resType = calcMax($1->getType(), $3->getType());
        ExprNode *t1 = typeCast($1, resType), *t3 = typeCast($3, resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (int)(t1->getValue()) % (int)(t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::MOD, t1, t3);
    }
    ;

AddSubExpr
    : MulDivModExpr {$$ = $1;}
    | AddSubExpr ADD MulDivModExpr {
        Type *resType = calcMax($1->getType(), $3->getType());
        ExprNode *t1 = typeCast($1, resType), *t3 = typeCast($3, resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) + (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::ADD, t1, t3);
    }
    | AddSubExpr SUB MulDivModExpr {
        Type *resType = calcMax($1->getType(), $3->getType());
        ExprNode *t1 = typeCast($1, resType), *t3 = typeCast($3, resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) - (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::SUB, t1, t3);
    }
    ;

RelExpr
    : AddSubExpr {
        $$ = $1;
    }
    | RelExpr LESS AddSubExpr {
        Type *maxType = relMax($1->getType(), $3->getType()), *resType = logicMax($1->getType(), $3->getType());
        ExprNode *t1 = typeCast($1, maxType), *t3 = typeCast($3, maxType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) < (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::LESS, t1, t3);
    }
    | RelExpr LESSEQ AddSubExpr {
        Type *maxType = relMax($1->getType(), $3->getType()), *resType = logicMax($1->getType(), $3->getType());
        ExprNode *t1 = typeCast($1, maxType), *t3 = typeCast($3, maxType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) <= (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::LESSEQ, t1, t3);
    }
    | RelExpr GREATER AddSubExpr {
        Type *maxType = relMax($1->getType(), $3->getType()), *resType = logicMax($1->getType(), $3->getType());
        ExprNode *t1 = typeCast($1, maxType), *t3 = typeCast($3, maxType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) > (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::GREATER, t1, t3);
    }
    | RelExpr GREATEREQ AddSubExpr {
        Type *maxType = relMax($1->getType(), $3->getType()), *resType = logicMax($1->getType(), $3->getType());
        ExprNode *t1 = typeCast($1, maxType), *t3 = typeCast($3, maxType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) >= (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::GREATEREQ, t1, t3);
    }
    ;

LEqExpr
    : RelExpr {$$ = $1;}
    | LEqExpr EQ RelExpr {
        Type *maxType = relMax($1->getType(), $3->getType()), *resType = logicMax($1->getType(), $3->getType());
        ExprNode *t1 = typeCast($1, maxType), *t3 = typeCast($3, maxType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) == (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::EQ, t1, t3);
    }
    | LEqExpr NEQ RelExpr {
        Type *maxType = relMax($1->getType(), $3->getType()), *resType = logicMax($1->getType(), $3->getType());
        ExprNode *t1 = typeCast($1, maxType), *t3 = typeCast($3, maxType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) != (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::NEQ, t1, t3);
    }
    ;

LAndExpr
    : LEqExpr {$$ = $1;}
    | LAndExpr AND LEqExpr {
        Type *resType = logicMax($1->getType(), $3->getType());
        ExprNode *t1 = typeCast($1, resType), *t3 = typeCast($3, resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) && (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::AND, t1, t3);
    }
    ;

LOrExpr
    : LAndExpr {$$ = $1;}
    | LOrExpr OR LAndExpr {
        Type *resType = logicMax($1->getType(), $3->getType());
        ExprNode *t1 = typeCast($1, resType), *t3 = typeCast($3, resType);
        SymbolEntry *se;
        if(resType->isConst())
            se = new ConstantSymbolEntry(resType, (t1->getValue()) || (t3->getValue()));
        else
            se = new TemporarySymbolEntry(resType, SymbolTable::getLabel());
        $$ = new BinaryExpr(se, BinaryExpr::OR, t1, t3);
    }
    ;

ConstExp
    : 
    AddSubExpr {
        assert($1->getType()->isConst());
        $$ = $1;
    }
    ;
%%

int yyerror(char const *message)
{
    std::cerr<<message<<std::endl;
    return -1;
}
