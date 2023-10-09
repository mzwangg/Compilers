%{
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include <string.h> 
#define VAR_MAX_NUM 64 // 设定变量的最大数目为64
#define EXPR_MAX_LENTH 64 // 设定字符串的最大长度为64

int yylex();
extern int yyparse();
FILE* yyin;
void yyerror(const char* s);

struct var {
	char *name;
	double value;
}varArr[VAR_MAX_NUM]; // 记录变量数值的符号表
struct var *get_var(char *name);

char str[EXPR_MAX_LENTH];
%}

//属性值可能具有的类型
%union{
	double dval;
	struct var* varval;
}

//%token 为每一个都自动分配不等的整数值
%token ADD MINUSLEFTPAR
%token MUL DIV
%token LEFT_PAR RIGHT_PAR
%token UMINUS
%token EQU
%token <dval> NUMBER //数字对应属性值dval
%token <varval> ID //变量对应属性值varval

//声明优先级和结合性
%right EQU
%left ADD MINUS
%left MUL DIV
%right UMINUS
%left LEFT_PAR RIGHT_PAR

//表达式的属性值设置为dval
%type <dval> expr

%%
lines	:	lines expr ';'	{ printf("%f\n", $2); }
		| lines ';'
		|
		;

expr	: expr ADD expr { $$ = $1 + $3; }
		| expr MINUS expr { $$ = $1 - $3; }
		| expr MUL expr { $$ = $1 * $3; }
		| expr DIV expr { $$ = $1 / $3; }
		| LEFT_PAR expr RIGHT_PAR { $$ = $2; }
		| MINUS expr %prec UMINUS { $$ = -$2; }
		| NUMBER { $$ = $1; }
		| ID EQU expr { $1->value=$3; $$=$3;}
		| ID {$$=$1->value;}  
		;


%%
int yylex()
{
	int t;
	while (1)
	{
		t = getchar();
		if(t==' ' || t=='\t'||t=='\n'){
            //do noting
        }else if (isdigit(t))
		{
			yylval.dval = 0;//属性值，在此处即指对应的数值
			while (isdigit(t))
			{
				yylval.dval = yylval.dval * 10 + t - '0';
				t = getchar();
			}
			ungetc(t, stdin);//将读出的多余字符再次放回到缓冲区
			return NUMBER;
		}else if (isalpha(t) || t == '_'){//标识符以字母下划线开头
			char* pos = str;
            while(isdigit(t) || isalpha(t) || t == '_'){
                *(pos++)=t;
                t=getchar();
            }
            ungetc(t,stdin);//将读出的多余字符再次放回到缓冲区
            *pos='\0';
            yylval.varval=get_var(str); //将对应的变量加入yylval.varval
            return ID;
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
        }else if (t == '='){
			return EQU;
		}else{
            return t;
        }
	}
}

struct var* get_var(char *name){
	for(struct var* pos = varArr;pos != varArr + VAR_MAX_NUM; ++pos){ //遍历整个varArr
		if(!pos->name){ //当该位置没有初始化时，深拷贝name并初始化
			pos->name=strdup(name);
		}
		if(!strcmp(pos->name,name)){ //当找到name时，返回
			return pos;
		}
	}
	yyerror("Too many vars!");//此时已遍历varArr，且没有对应的name和空位
	exit(1);
}

int main(){
	yyin = stdin;
	do {
		yyparse();
	} while (!feof(yyin));
	return 0;
}
void yyerror(const char* s) {
	fprintf(stderr, "Parse error: %s\n", s);
	exit(1);
}