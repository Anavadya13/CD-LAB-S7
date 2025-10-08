%{
int count = 0;
%}

%%
"if"|"else"|"while"|"for"|"int"|"float"|"char"  { count++; }
[a-zA-Z_][a-zA-Z0-9_]*  ;
[ \t\n] ;
. ;
%%

int main() {
    yylex();
    printf("Number of keywords: %d\n", count);
    return 0;
}

int yywrap() { return 1; }
