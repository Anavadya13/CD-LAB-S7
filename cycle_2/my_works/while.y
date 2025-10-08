%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
int yyerror(const char *s);
%}

%token WHILE ID NUMBER RELOP

%%

stmt:
    WHILE '(' condition ')' '{' body '}'
        { printf("Valid while statement\n"); }
    ;

condition:
    ID RELOP ID
    | ID RELOP NUMBER
    ;

body:
    ID '=' expr ';'
    ;

expr:
    ID
    | NUMBER
    | expr '+' expr
    | expr '-' expr
    ;

%%

int yyerror(const char *s) {
    printf("Invalid while statement\n");
    return 0;
}

int main() {
    printf("Enter a while statement:\n");
    yyparse();
    return 0;
}
