#include<stdio.h>

int main() {
	int a, b, c, max;
	printf("num1 = ");
	scanf("%d", &a);
	printf("num2 = ");
	scanf("%d", &b);
	printf("num3 = ");
	scanf("%d", &c);
	
	max = (a>b) ? ((a>c)?a:c) : ((b>c)?b:c);
	
	printf("max = %d", max);
}
