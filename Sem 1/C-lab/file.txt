//Create, open and close a file.
#include<stdio.h>

int main(){
	char ch;
	FILE *f1;
	f1 = fopen("file.txt","r");
	if(f1 == NULL){
		printf("File Not Found!");
	}
	else{
		printf("File Found!\n\n");
		ch = getc(f1);
		while(ch!=EOF){
			printf("%c", ch);
			ch = getc(f1);	
		}
	}
}
