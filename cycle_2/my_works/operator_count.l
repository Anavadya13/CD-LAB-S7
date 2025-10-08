%{
int op_count = 0;
%}

%%

"+"|"-"|"*"|"/"|"="|"=="|"<"|">"|"<="|">="|"!="  { op_count++; }
[ \t\n]   ;
.         ;

%%

int main() {
    printf("Enter an expression or code:\n");
    yylex();
    printf("Number of operators: %d\n", op_count);
    return 0;
}

int yywrap() { return 1; }
