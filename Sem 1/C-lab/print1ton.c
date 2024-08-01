#include<stdio.h>

int main() {
	int n, i;
	for(i=1; i<=10; i++){
		printf("%d\n",i);
	}
	printf("enter num :");
	scanf("%d", &n);
	for( i=1; i<=n; i++){
		printf("%d\n", i);
	}
}

