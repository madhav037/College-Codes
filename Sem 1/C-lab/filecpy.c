//Copy one file to another file.
#include<stdio.h>

int main() {
	char ch;
	FILE *f1, *f2;
	f1 = fopen("file.txt","r");
	f2 = fopen("filo.c","w");
	ch = getc(f1);
	while(ch!=EOF){
		putc(ch,f2);
		ch=getc(f1);
	}
	fclose(f1);
	fclose(f2);
}
