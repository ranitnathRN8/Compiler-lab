
%{
#include<stdio.h>
%}



%%

\"([^\\\"]|\\.)*\" {printf("String Detected : %s \n" , yytext);}


auto|double|int|struct|break|else|long|switch|case|enum|register|typedef|char|extern|return|union|continue|for|signed|void|do|if|static|while|default|goto|sizeof|volatile|const|float|short     {printf("\nKEYWORD : %s\n",yytext);} 																				

[{};,()]   {printf("\nSEPERATOR : %s\n",yytext);}	

[+-/=*%]   {printf("\nOPERATOR : %s\n",yytext);}		


[!@#$&]   {printf("\nSPECIAL CHARACTER :  %s\n",yytext);}	

([a-zA-Z][0-9][_])+|[a-zA-Z]* {printf("\nIDENTIFIER : %s\n",yytext);}

\/\/(.*) {printf("\nCOMMENT : %s\n",yytext);}

\/\*(.*\n).*\*\/ {printf("\nMULTILINE COMMENT : %s\n",yytext);}

.|\n ; 			
%%

/*call the yywrap function*/
int yywrap()
{
return 1;
}



/*Auxiliary function*/
/*Driver function*/

int main()
{
yyin=fopen("client.c","r");
yyout=fopen("returnClient.c","w");
/*call the yylex function.*/
yylex();
return 0;
}