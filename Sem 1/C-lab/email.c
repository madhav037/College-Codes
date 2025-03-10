#include<stdio.h>
#include<string.h>

int main() {
	char email[254], i=0, count=0;
	gets(email);
	puts(email);
	
	for(i = strlen(email); i<='\0'; i++){
		if(i == '@' && i == '.'){
			count++;
			break;
		}
	}
	
}
