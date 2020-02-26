%{
#include<stdio.h>
int a=0,c=0;
%}
%%
\/\/(.*) {a++;}
\/\*(.*\n).*\*\/ {c++;}
%%
int yywrap(){
    return 1;
}
int main()
{
yyin=fopen("text.txt","r");
yyout=fopen("out.txt","w");
yylex();
printf("no of clines %d %d\n",a,c);
return 0;
}