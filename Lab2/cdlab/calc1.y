%{
#include <stdio.h>
#include <math.h>
#define PI 3.141592
%}
%union
{
	double dval;
	int ival;
}
%token <dval> NUMBER
%token COS
%token SIN
%token TAN
%left '+' '-'
%left '*' '/'
%left '%'
%type <dval> E
%%
S: 
S E'\n'        { printf("%lf\n", $2); }
| 
;

E:
        E'+'E 			{ $$ = $1 + $3; }
        | E'-'E           { $$ = $1 - $3; }
        | E'*'E           { $$ = $1 * $3; }
        | E'/'E           { $$ = $1 / $3; }
        | E'%'E           { $$ = fmod($1,$3); }
        | E'^'E           { $$ = pow($1, $3); }
        | NUMBER { $$=$1; }
        | COS '(' E ')' { $$=cos($3/180*PI); }
        | SIN '(' E ')' { $$=sin($3/180*PI); }
        | TAN '(' E ')' { $$=tan($3/180*PI); }
        ;
%%

int yyerror(char *s) {
    printf("%s\n", s);
    return 0;
}

int main() {
    yyparse();
    return 0;
}
