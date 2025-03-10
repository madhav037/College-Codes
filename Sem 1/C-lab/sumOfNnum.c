#include<stdio.h>

int main() {
	int i, sum=0, a;
	printf("enter till num you want to add :");
	scanf("%d", &a);
	for( i=1; i<=a; i++){
		sum = sum + i;
	}
	printf("%d", sum);
	
}

