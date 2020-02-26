
%{
#include<stdio.h>
%}

%%

auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short     { ECHO; printf("\t:KEYWORD\n");} 																				
[{};,()]   {ECHO; printf("\t:SEPERATOR\n");}	
[!@#$%^&*_~`]   {ECHO; printf("\t:SYMBOL\n");}
[+-/=*%]   {ECHO; printf("\t:OPERATOR\n");}	
^[a-zA-Z_][a-zA-Z0-9_]* {ECHO; printf("\t:Identifier\n");}
.|\n ; 

%%

int yywrap()								
{
return 1;
}

int main(void)
{
yylex();
return 0;
}