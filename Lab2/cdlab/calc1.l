%{
#include "y.tab.h"
#include <stdlib.h>
#include <stdio.h>
#include <math.h> 
%}
NUMBER [0-9]+|([0-9]*"."[0-9]+)
%%

{NUMBER} {yylval.dval=atof(yytext);
          return NUMBER;}

[-+*/%\^\n]      { return *yytext; }
COS|cos			{ return COS; }
sin|SIN			{ return SIN; }
tan|TAN			{ return TAN; }

\n|. return yytext[0];

%%

int yywrap(void) {
    return 1;
}
