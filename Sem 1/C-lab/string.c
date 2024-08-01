//Use string handling functions strlen(), strcmp(), strcpy(), strcat(), strrev(), strlwr() and strupr()
#include<stdio.h>
#include<string.h>

int main(){
	char ch[6] = "madhav";
	int len=0;
	
	len = strlen(ch);
	printf("length is %d\n", len);
	
	char ch2[6] = "msdhav";
	int i;
	
	printf("cmp(if 0 equal if 1 not equal) : %d\n", strcmp(ch,ch2));
	
	strcpy(ch2, ch);
	printf("copy %s", ch2);
	
	printf("string add = %s", strcat(ch,ch2));
	
}
