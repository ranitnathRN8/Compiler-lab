%{
    #include<stdio.h>
    #include<string.h>
%}

%%
[a-zA-Z] {printf("%s is Alphabet\n",yytext);}
.        {printf("%s is invalid\n",yytext);}
\n       {return 0;}
%%

int yywrap(){} 
int main() 
{
    yylex();
    return 0;
}

