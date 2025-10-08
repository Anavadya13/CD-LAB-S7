%{
#include "y.tab.h"
%}

%%

"while"         { return WHILE; }
"("             { return '('; }
")"             { return ')'; }
"{"             { return '{'; }
"}"             { return '}'; }
";"             { return ';'; }
[0-9]+          { return NUMBER; }
[a-zA-Z_][a-zA-Z0-9_]*  { return ID; }
"<"             { return RELOP; }
">"             { return RELOP; }
"<="            { return RELOP; }
">="            { return RELOP; }
"=="            { return RELOP; }
"!="            { return RELOP; }
[ \t\n]         ;
.               { return yytext[0]; }

%%

int yywrap() { return 1; }
