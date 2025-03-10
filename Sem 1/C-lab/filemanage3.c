//Demonstrate functions fprintf(), fscanf(), fputc(), fgetc(), fseek() and rewind()
#include<stdio.h>

int main() {
	int age = 20;
	float floaat = 45.69;
	char ch, name="nbvc";
	FILE *f1;
	fscanf("*f1");
	f1 = fopen("file.txt","r");
	fprintf(f1, "%d %s %f",age,name,floaat);
}
