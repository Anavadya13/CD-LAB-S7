%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
int yyerror(const char *s);
%}

%token SWITCH CASE DEFAULT BREAK ID NUM

%%

stmt:
    SWITCH '(' ID ')' '{' cases default_case '}'
        { printf("Valid switch statement\n"); }
    ;

cases:
    cases CASE NUM ':' stmt_list BREAK ';'
    | CASE NUM ':' stmt_list BREAK ';'
    ;

default_case:
    DEFAULT ':' stmt_list
    ;

stmt_list:
    ID '=' NUM ';'
    ;

%%

int yyerror(const char *s) {
    printf("Invalid switch statement\n");
    return 0;
}

int main() {
    printf("Enter a switch statement:\n");
    yyparse();
    return 0;
}
