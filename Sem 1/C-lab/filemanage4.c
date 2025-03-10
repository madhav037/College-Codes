//Append one file at the end of other
#include<stdio.h>

int main() {
	FILE *f1, *f2;
	char ch;
	int cc=0, cs=0, cl=0;
	f1 = fopen("file.txt","r");
	f2 = fopen("filo.txt","a");	
	ch = getc(f1);
	while(ch != EOF){
		putc(ch,f2);
		ch=getc(f1);
	}
	fclose(f1);
	fclose(f2);
}

