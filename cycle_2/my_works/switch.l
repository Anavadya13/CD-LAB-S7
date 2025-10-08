%{
#include "y.tab.h"
%}

%%
"switch"        { return SWITCH; }
"case"          { return CASE; }
"default"       { return DEFAULT; }
"break"         { return BREAK; }
"("             { return '('; }
")"             { return ')'; }
"{"             { return '{'; }
"}"             { return '}'; }
":"             { return ':'; }
";"             { return ';'; }
[0-9]+          { return NUM; }
[a-zA-Z_][a-zA-Z0-9_]*  { return ID; }
[ \t\n]         ;
.               { return yytext[0]; }

%%

int yywrap() { return 1; }
