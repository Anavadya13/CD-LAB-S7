%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
int yyerror(const char *s);
%}

%token ID NUM OP

%%

stmt:
    ID '=' expr ';'  { printf("Valid assignment statement\n"); }
    ;

expr:
    ID
    | NUM
    | expr OP expr
    ;

%%

int yyerror(const char *s) {
    printf("Invalid assignment statement\n");
    return 0;
}

int main() {
    printf("Enter an assignment statement:\n");
    yyparse();
    return 0;
}
