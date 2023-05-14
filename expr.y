%{
    #include<stdio.h> 
	#include<stdlib.h>
	void yyerror();
	extern int yylex(void);
%} 

%token NUM 
%left '-''+' 
%left '*''/' 
%left '('')'

%% 
start: exp {printf("\n The Value of the arithemtic expression is %d\n",$$);exit(0);} 

exp:exp'+'exp {$$=$1+$3;} 
    |exp'-'exp {$$=$1-$3;} 
    |exp'*'exp {$$=$1*$3;} 
    |exp'/'exp  { 
        
                    if($3!=0){ $$ = $1/$3; }
                    else
                    { 
                        printf("Error: divide by Zero\n");
                        yyerror();
                        exit(0);
                    }
                } 

    |'('exp')' {$$=$2;} 
    |NUM {$$=$1;} 
    ; 

%% 

int main() 
{ 
    printf("Enter the Expression:\n"); 

    yyparse();
	return 0;
} 
void yywrap(){} 

void yyerror()
{
 printf("The Given airthemetic expression is INVALID\n");
}

