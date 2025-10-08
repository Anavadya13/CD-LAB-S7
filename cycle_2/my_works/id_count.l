%{
int id_count = 0;
%}

%%
[a-zA-Z_][a-zA-Z0-9_]*  { id_count++; }
[ \t\n] ;
. ;
%%

int main() {
    yylex();
    printf("Number of identifiers: %d\n", id_count);
    return 0;
}

int yywrap() { return 1; }
