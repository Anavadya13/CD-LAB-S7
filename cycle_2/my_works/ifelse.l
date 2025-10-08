%{
#include "y.tab.h"
%}

%%

"if"            { return IF; }
"else"          { return ELSE; }
"("             { return '('; }
")"             { return ')'; }
"<"|">"|"=="|"!="|"<="|">="  { return RELOP; }
"="             { return '='; }
";"             { return ';'; }
[a-zA-Z_][a-zA-Z0-9_]*   { return ID; }
[0-9]+          { return NUM; }
[ \t\n]         ;
.               { return yytext[0]; }

%%

int yywrap() { return 1; }
