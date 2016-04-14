%{
#include <stdio.h>
#include <stdlib.h>
%}
%token ID NUM IF THEN LE GE EQ NE OR AND ELSE WHILE SWITCH DEFAULT BREAK CASE FOR
%right '='
%left AND OR
%left '<' '>' LE GE EQ NE
%left '+''-'
%left '*''/'
%right UMINUS
%left '!'
%%

S      : ST {printf("IF\n");exit(0);};
	| ST2 {printf("WHILE\n");exit(0);}
	| ST3 {printf("SWITCH\n");exit(0);}
	| ST4 {printf("FOR\n");exit(0);}
	| ST5 {printf("OPERAND_ERROR\n");exit(0);}
ST    : IF '(' E2 ')' '{' ST1 '}' ELSE '{' ST1 '}'
        | IF '(' E2 ')' THEN ST1';'
        ;
ST1  : ST
	|ST2
        | E';'
        ;
ST2     : WHILE'(' E2 ')' '{' ST1 '}'
ST5     : WHILE'(' E3 ')' '{' ST1 '}'
E    : ID'='E
      | E'+'E
      | E'-'E
      | E'*'E
      | E'/'E
      | E'<'E
      | E'>'E
      | E LE E
      | E GE E
      | E EQ E
      | E NE E
      | E OR E
      | E AND E
      | ID
      | NUM
      ;
E2  : E'<'E
      | '<'E
      | E'>'E
      | E LE E
      | E GE E
      | E EQ E
      | E NE E
      | E OR E
      | E AND E
      | ID
      | NUM
      ;
E3    :E'<'
      ;
ST3     :    SWITCH '(' ID ')' '{' B '}'|SWITCH '(' NUM ')' '{' B '}'
         ;
   
B       :    C
         |    C    D
        ;
   
C      :    C    C
        |    CASE NUM ':' E ';'
       
        | BREAK ';'
        ;

D      :    DEFAULT    ':' E ';' BREAK ';'
        ;
ST4       : FOR '(' E ';' E2 ';' E ')' '{'ST1'}'
           ;

%%

#include "lex.yy.c"

main()
{
  yyparse();
}
