
%{
#include <stdio.h>
#include <stdlib.h>
extern int yylex();
void yyerror(const char *s);
%}

%token VALID_ID INVALID_ID  // <-- Token declaration here

%%
variable: VALID_ID      { printf("Valid variable name\n"); }
        | INVALID_ID    { printf("Invalid variable name\n"); }
        ;
%%

void yyerror(const char *s) {
    fprintf(stderr, "Syntax Error: %s\n", s);
}

int main() {
    printf("Enter a variable name: ");
    yyparse();
    return 0;
}
