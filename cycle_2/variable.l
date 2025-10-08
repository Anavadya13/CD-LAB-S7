%{
#include "y.tab.h"
%}

ID_START    [a-zA-Z]
ID_REST     [a-zA-Z0-9]*

%%
{ID_START}{ID_REST}    { return VALID_ID; }
[0-9]+|[^a-zA-Z0-9\n]+ { return INVALID_ID; }
\n                     { return 0; }

%%



