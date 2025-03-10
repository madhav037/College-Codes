#include<stdio.h>

int main() {
	int i, space, rows, sum=0;
	scanf("%d", &rows);
	for(i=1; i<=rows; ++i,sum=0){
	for(space=1; space<=rows-i; ++space){
	printf(" ");
	}
	while(sum!=2*i-1) {
	printf("*");
	++sum;
	}
	printf("\n");
	}
	return 0;
}
