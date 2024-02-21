%option noyywrap
%option nounput
%option noinput
%top{
    #include <stdarg.h>
    #include "parser.h"
}
%{
    inline void dump_tokens(const char* format, ...){
        va_list args;
        va_start(args, format);
        if (false)
            vfprintf(yyout, format, args);
        va_end(args);
    }

    /* Your code here, if desired (lab3). */
%}

DECIMIAL [1-9][0-9]*|0|-2147483648
OCTAL 0[1-7][0-7]*         
HEXADECIMAL 0(x|X)[1-9a-fA-F][0-9a-fA-F]*|0

DECIMIAL_FLOAT ((([0-9]*[.][0-9]*([eE][+-]?[0-9]+)?)|([0-9]+[eE][+-]?[0-9]+))[fLlL]?)
HEXADECIMAL_FLOAT (0[xX](([0-9A-Fa-f]*[.][0-9A-Fa-f]*([pP][+-]?[0-9]+)?)|([0-9A-Fa-f]+[pP][+-]?[0-9]+))[fLlL]?)

ID [[:alpha:]_][[:alpha:][:digit:]_]*
EOL (\r\n|\n|\r)
WHITE [\t ]

BLOCKCOMMENTBEGIN "/*"
BLOCKCOMMENTELEMENT .|\n
BLOCKCOMMENTEND "*/"
%x BLOCKCOMMENT

LINECOMMENT "//"[^\n]*

%%
    /* rules section */
"int" {
    dump_tokens("INT\t%s\n", yytext);
    return INT;
}

"float" {
    dump_tokens("FLOAT\t%s\n", yytext);
    return FLOAT;
}

"void" {
    dump_tokens("VOID\t%s\n", yytext);
    return VOID;
}

"if" {
    dump_tokens("IF\t%s\n", yytext);
    return IF;
}

"else" {
    dump_tokens("ELSE\t%s\n", yytext);
    return ELSE;
}

"return" {
    dump_tokens("RETURN\t%s\n", yytext);
    return RETURN;
}

"const" {
    dump_tokens("CONST\t%s\n", yytext);
    return CONST;
}

"while" {
    dump_tokens("WHILE\t%s\n", yytext);
    return WHILE;
}

"break" {
    dump_tokens("BREAK\t%s\n", yytext);
    return BREAK;
}

"continue" {
    dump_tokens("CONTINUE\t%s\n", yytext);
    return CONTINUE;
}

"=" {
    dump_tokens("ASSIGN\t%s\n", yytext);
    return ASSIGN;
}

"==" {
    dump_tokens("EQ\t%s\n", yytext);
    return EQ;
}

"!=" {
    dump_tokens("NEQ\t%s\n", yytext);
    return NEQ;
}

"<=" {
    dump_tokens("LESSEQ\t%s\n", yytext);
    return LESSEQ;
}

">=" {
    dump_tokens("GREATEREQ\t%s\n", yytext);
    return GREATEREQ;
}

"<" {
    dump_tokens("LESS\t%s\n", yytext);
    return LESS;
}

">" {
    dump_tokens("GREATER\t%s\n", yytext);
    return GREATER;
}

"+" {
    dump_tokens("ADD\t%s\n", yytext);
    return ADD;
}

"-" {
    dump_tokens("SUB\t%s\n", yytext);
    return SUB;
}

"*" {
    dump_tokens("MUL\t%s\n", yytext);
    return MUL;
}

"/" {
    dump_tokens("DIV\t%s\n", yytext);
    return DIV;
}

"%" {
    dump_tokens("MOD\t%s\n", yytext);
    return MOD;
}

"&&" {
    dump_tokens("AND\t%s\n", yytext);
    return AND;
}

"||" {
    dump_tokens("OR\t%s\n", yytext);
    return OR;
}

"!" {
    dump_tokens("NOT\t%s\n", yytext);
    return NOT;
}

";" {
    dump_tokens("SEMICOLON\t%s\n", yytext);
    return SEMICOLON;
}

"(" {
    dump_tokens("LPAREN\t%s\n", yytext);
    return LPAREN;
}

")" {
    dump_tokens("RPAREN\t%s\n", yytext);
    return RPAREN;
}

"[" {
    dump_tokens("LBRACKET\t%s\n", yytext);
    return LBRACKET;
}

"]" {
    dump_tokens("RBRACKET\t%s\n", yytext);
    return RBRACKET;
}

"{" {
    dump_tokens("LBRACE\t%s\n", yytext);
    return LBRACE;
}

"}" {
    dump_tokens("RBRACE\t%s\n", yytext);
    return RBRACE;
}

"," {
    dump_tokens("COMMA\t%s\n", yytext);
    return COMMA;
}

"getint" {
    dump_tokens("getint\t%s\n", yytext);
    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    Type* funcType = new FunctionType(TypeSystem::intType, {});//返回类型int，无参数
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, 0);//作用域GLOBAL(0)
    globals->install(yytext, se);
    return ID;
}

"getch" {
    dump_tokens("getch\t%s\n", yytext);
    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    Type* funcType = new FunctionType(TypeSystem::intType, {});//返回类型int，无参数
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, 0);//作用域GLOBAL(0)
    globals->install(yytext, se);
    return ID;
}

"getfloat" {
    dump_tokens("getfloat\t%s\n", yytext);
    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    Type* funcType = new FunctionType(TypeSystem::floatType, {});//返回类型int，无参数
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, 0);//作用域GLOBAL(0)
    globals->install(yytext, se);
    return ID;
}

"getarray" {
    dump_tokens("getarray\t%s\n", yytext);
    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> paramsType; 
    Type* arrayType = new IntArrayType();
    ((ArrayType*)arrayType)->setlenth();
    ((ArrayType*)arrayType)->addDim(-1);
    paramsType.push_back(arrayType);
    Type* funcType = new FunctionType(TypeSystem::intType, paramsType);
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, 0);
    globals->install(yytext, se);
    return ID;
}

"getfarray" {
    dump_tokens("getfarray\t%s\n", yytext);
    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> paramsType; 
    Type* arrayType = new FloatArrayType();
    ((ArrayType*)arrayType)->setlenth();
    ((ArrayType*)arrayType)->addDim(-1);
    paramsType.push_back(arrayType);
    Type* funcType = new FunctionType(TypeSystem::intType, paramsType);
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, 0);
    globals->install(yytext, se);
    return ID;
}

"putint" {
    dump_tokens("putint\t%s\n", yytext);
    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> paramsType; 
    paramsType.push_back(TypeSystem::intType);
    Type* funcType = new FunctionType(TypeSystem::voidType, paramsType);
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, 0);
    globals->install(yytext, se);
    return ID;
}

"putch" {
    dump_tokens("putch\t%s\n", yytext);
    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> paramsType;
    paramsType.push_back(TypeSystem::intType);
    Type* funcType = new FunctionType(TypeSystem::voidType, paramsType);
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, 0);
    globals->install(yytext, se);
    return ID;
}

"putfloat" {
    dump_tokens("putfloat\t%s\n", yytext);
    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> paramsType; 
    paramsType.push_back(TypeSystem::floatType);
    Type* funcType = new FunctionType(TypeSystem::voidType, paramsType);
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, 0);
    globals->install(yytext, se);
    return ID;
}

"putarray" {
    dump_tokens("putarray\t%s\n", yytext);
    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> paramsType; 
    paramsType.push_back(TypeSystem::intType);
    Type* arrayType = new IntArrayType();
    ((ArrayType*)arrayType)->setlenth();
    ((ArrayType*)arrayType)->addDim(-1);
    paramsType.push_back(arrayType);
    Type* funcType = new FunctionType(TypeSystem::voidType, paramsType);
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, 0);
    globals->install(yytext, se);
    return ID;
}

"putfarray" {
    dump_tokens("putfarray\t%s\n", yytext);
    char *lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    std::vector<Type*> paramsType;
    paramsType.push_back(TypeSystem::intType);
    Type* arrayType = new FloatArrayType();
    ((ArrayType*)arrayType)->setlenth();
    ((ArrayType*)arrayType)->addDim(-1);
    paramsType.push_back(arrayType);
    Type* funcType = new FunctionType(TypeSystem::voidType, paramsType);
    SymbolEntry* se = new IdentifierSymbolEntry(funcType, yytext, 0);
    globals->install(yytext, se);
    return ID;
}

{DECIMIAL} {
    int decimal;
    decimal = atoi(yytext);
    dump_tokens("DECIMAL\t%s\t%d\n", yytext, decimal);
    yylval.itype = decimal;
    return INTEGERCONST;
}

{OCTAL} {
    int octal;
    octal = strtol(yytext, NULL, 8);
    dump_tokens("OCTAL\t%s\t%d\n", yytext, octal);
    yylval.itype = octal;
    return INTEGERCONST;
}

{HEXADECIMAL} {
    int hexadecimal;
    hexadecimal  = strtol(yytext, NULL, 16);
    dump_tokens("HEXADECIMAL\t%s\t%d\n", yytext, hexadecimal);
    yylval.itype = hexadecimal;
    return INTEGERCONST;
}

{DECIMIAL_FLOAT} {
    yylval.ftype = atof(yytext);
    dump_tokens("DECIMIAL_FLOAT\t%s\t%f\n", yytext,yylval.ftype);
    return FLOATCONST;
}

{HEXADECIMAL_FLOAT} {
    sscanf(yytext, "%f", &yylval.ftype);
    dump_tokens("HEXADECIMAL_FLOAT\t%s\t%f\n", yytext,yylval.ftype);
    return FLOATCONST;
}

{ID} {
    char *lexeme;
    dump_tokens("ID\t%s\n", yytext);
    lexeme = new char[strlen(yytext) + 1];
    strcpy(lexeme, yytext);
    yylval.strtype = lexeme;
    return ID;
}

{EOL} yylineno++;

{WHITE}

{LINECOMMENT} {}

{BLOCKCOMMENTBEGIN} {BEGIN BLOCKCOMMENT;}
<BLOCKCOMMENT>{BLOCKCOMMENTELEMENT} {}
<BLOCKCOMMENT>{BLOCKCOMMENTEND} {BEGIN INITIAL;}

%%
