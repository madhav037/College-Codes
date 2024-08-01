#include<stdio.h>
#include<string.h>
#include<ctype.h>

void strUpr(char*);

int main(){
    char ch[] = "asfds";
    strUpr(ch);
    printf("%s", ch);
    
}

void strUpr(char *ch){
   int i;
   for (int i = 0; ch[i] != '\0'; i++)
   {
    ch[i] = strupr(ch[i]);
   }
}