%{
#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>

#ifndef YYSTYPE
#define YYSTYPE double
#endif

int yylex();
extern int yyparse();
FILE* yyin;
void yyerror(const char* s);
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


lines   :       lines expr ';' { printf("%f\n", $2); }
        |       lines ';'
        |
        ;

expr    :       expr ADD expr   { $$=$1 + $3; }
        |       expr MINUS expr   { $$=$1 - $3; }
        |       expr MUL expr  { $$ = $1 * $3; }
        |       expr DIV expr  { $$ = $1 / $3; }
        |       LEFT_PAR expr RIGHT_PAR   { $$ = $2; }
        |       MINUS expr %prec UMINUS   {$$ = -$2;}
        |       NUMBER  {$$=$1;}
        ;

%%

// programs section

int yylex()
{
    int t;
    while(1){
        t=getchar();
        if(t==' '||t=='\t'||t=='\n'){
            //do noting
        }else if(isdigit(t)){
            yylval = 0;
            while (isdigit(t)) {
                yylval = yylval * 10 + t - '0';
                t = getchar();
            }
            ungetc(t, stdin);//将读出的多余字符再次放回到缓冲区
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
    yyin=stdin;
    do{
        yyparse();
    }while(!feof(yyin));
    return 0;
}
void yyerror(const char* s){
    fprintf(stderr,"Parse error: %s\n",s);
    exit(1);
}