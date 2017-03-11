%{
#include <stdio.h>
#include "example5.tab.h"
%}
%%
[0-9]+                  yylval = atoi(yytext); return NUMBER;
heat                    return TOKHEAT;
on|off                  yylval = !strcmp(yytext,"on"); return STATE;
set                     return TOKSET;
humidity to		return TOKHUMIDITY;
temperature             return TOKTEMPERATURE;
\n                      /* ignore end of line */;
[ \t]+                  /* ignore whitespace */;
%%
