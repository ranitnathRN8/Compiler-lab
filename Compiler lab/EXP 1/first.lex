%{
    #include<stdio.h>
    #include<string.h>
%}

%%
    ([a-zA-Z])* {printf("Is alphabet")}
    (^[a-zA-Z])* {printf("Not alphabet")}
%%

int yywrap(){} 
int main() 
{
     yylex(); 
  
    return 0; 
}

