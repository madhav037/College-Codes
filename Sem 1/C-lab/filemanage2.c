//Count chars, spaces, tabs and new lines in a file.
#include<stdio.h>

int main() {
	int chars=0, spaces=0, tabs =0, newLines=0; 
	char ch;
	FILE *f1;
	f1 = fopen("file.txt","r");
	ch = getc(f1);
	while(ch != EOF){
		printf("%c",ch);
//		if(ch > 'a' && ch < 'z' || ch > 'A' && ch < 'Z'){
//			chars++;
//		}
		if(ch == ' '){
			spaces++;
		}
		else if(ch == '.'){
			newLines++;
		}
		chars++;
		ch = getc(f1);
	}
	
	printf("chars = %d spaces = %d newline = %d", chars,spaces,newLines);
}
