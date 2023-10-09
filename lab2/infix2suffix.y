%{
// 定义段：包括头文件、函数定义、全局变量等
#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include<string.h>
#define EXPR_MAX_LENTH 64 // 字符串的最大长度

#ifndef YYSTYPE
#define YYSTYPE char* // 后缀表达式的类型为字符串，即char*
#endif

int yylex();
extern int yyparse();
FILE* yyin;
void yyerror(const char* s);

char str[EXPR_MAX_LENTH]; // 用于处理整数字符串
%}


//给每个符号定义一个单词类别
%token ADD MINUS
%token MUL DIV
%token LEFT_PAR RIGHT_PAR
%token UMINUS
%token NUMBER

//声明优先级和结合性
%left ADD MINUS
%left MUL DIV
%right UMINUS


%%

lines :    lines expr ';' { printf("%s\n", $2); } 
      |    lines ';'
      |
      ;

// 通过sprintf给定输出格式
expr  :    expr ADD expr  { $$ = (char*)malloc(EXPR_MAX_LENTH); sprintf($$, "%s %s %c", $1,$3,'+'); }
      |    expr MINUS expr  { $$ = (char*)malloc(EXPR_MAX_LENTH); sprintf($$, "%s %s %c", $1,$3,'-'); }
      |    expr MUL expr  { $$ = (char*)malloc(EXPR_MAX_LENTH); sprintf($$, "%s %s %c", $1,$3,'*'); }
      |    expr DIV expr  { $$ = (char*)malloc(EXPR_MAX_LENTH); sprintf($$, "%s %s %c", $1,$3,'/'); }
      |    LEFT_PAR expr RIGHT_PAR   { $$ = $2; }
      |    MINUS  expr %prec UMINUS  { $$ = (char*)malloc(EXPR_MAX_LENTH); sprintf($$, "-%s", $2); }
      |    NUMBER { $$ = (char*)malloc(EXPR_MAX_LENTH); strcpy($$,$1); }
      ;

%%

// programs section

int yylex()
{
    int t;
    while(1){
        t=getchar();
        if(t==' ' || t=='\t'||t=='\n'){
            //do noting
        }else if (isdigit(t)){
            char* pos = str;
            while(isdigit(t)){
                *(pos++)=t;
                t=getchar();
            }
            ungetc(t,stdin);//将读出的多余字符再次放回到缓冲区
            *pos='\0';
            yylval=str;
            return NUMBER;
        }else if(t=='+'){
            return ADD;
        }else if(t=='-'){
            return MINUS;
        }else if(t=='*'){
            return MUL;
        }else if(t=='/'){
            return DIV;
        }else if(t=='('){
            return LEFT_PAR;
        }else if(t==')'){
            return RIGHT_PAR;
        }else{
            return t;
        }
    }
}

int main(void){
    yyin = stdin;
    do{
        yyparse();
    } while(!feof(yyin));
    return 0;
}
void yyerror(const char* s){
    fprintf(stderr, "Parse error: %s\n", s);
    exit(1);
}