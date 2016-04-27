%{
#include <stdio.h>
#include <stdlib.h>

int count = 0;
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

S      : ST { count++; printf("IF\n");};
	| ST2 {count++;printf("WHILE\n");}
	| ST3 {count++;printf("SWITCH\n");}
	| ST4 {count++;printf("FOR\n");}
	| ST5 {count++;printf("line %d has error in it\n", count); printf("Error in syntax\n");}
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
E3    :E'>'
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

int main()
{
  yyparse();
  return 0;
}
