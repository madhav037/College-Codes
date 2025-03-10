#include<stdio.h>
#include<math.h>

int main() {
	int a, b, c, d, roots, root;
	printf("coeff of x^2 : ");
	scanf("%d", &a);
	printf("coeff of x : ");
	scanf("%d", &b);
	printf("constant : ");
	scanf("%d", &c);
	
	d = b*b - 4*a*c;
	if(d>0){
		roots = (-b)+(sqrt(d))/(2*a);
		root = (-b)-(sqrt(d))/(2*a);
		printf("root1 is =%d", root);
		printf("\nroots = %d",roots);
	}
	else if(d == 0){
		roots = (-b)/(2*a);
		printf("roots = %d",roots);
	}
	else {
		printf("imaginary roots");
	} 
}
