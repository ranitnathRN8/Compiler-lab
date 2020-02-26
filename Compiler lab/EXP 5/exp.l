%{
#include<stdio.h>
int vow_c=0, con_c =0;
%}

%%
[aeiouAEIOU] {vow_c++;}
[a-zA-Z] {con_c++;}
%%

int yywrap() {}
int main() {
    printf("Enter the string: \n");
    yylex();
    printf("The number of vowels are: %d\n", vow_c);
    printf("The number of consonants are: %d\n", con_c);
  
}