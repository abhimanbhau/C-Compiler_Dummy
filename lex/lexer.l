/*** Definition section ***/

%{
#include <stdio.h>
%}

%option noyywrap

%%

[_]?[a-zA-Z]+[0-9]*?			printf("VAR_NAME:%s", yytext);

[-+]?[0-9]+ 					 	printf("INT:%s", yytext);
[-+]?[0-9]+\.[0-9]+	 				printf("FLOAT:%s", yytext);
[/]+.* 					
[\t\v\n\f\r]
"int" 			   	 				printf("INT_KW");
"char" 				 				printf("CHAR_KW");
"float" 						 	printf("FL_KW");
"double" 							printf("DB_KW");
"if" 								printf("IF_KW");
"while" 							printf("WH_KW");
;									printf(" EOL ");

%%

int main(void)
{
    yylex();
    return 0;
}