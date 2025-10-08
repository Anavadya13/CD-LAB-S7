%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
int yyerror(const char *s);
%}

%token IF ELSE ID NUM RELOP

%%

stmt:
    IF '(' cond ')' stmt ELSE stmt  { printf("Valid if-else statement\n"); }
  | IF '(' cond ')' stmt             { printf("Valid if statement\n"); }
  | ID '=' expr ';'                  
  ;

cond:
    ID RELOP ID
  | ID RELOP NUM
  ;

expr:
    ID
  | NUM
  ;

%%

int yyerror(const char *s) {
    printf("Invalid if-else statement\n");
    return 0;
}

int main() {
    printf("Enter an if-else statement:\n");
    yyparse();
    return 0;
}
