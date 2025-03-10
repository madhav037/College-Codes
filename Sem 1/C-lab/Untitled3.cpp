#include<stdio.h>

int main() {
	float a, b, ans;
	int s;
	printf("\nenter num1 : ");
	scanf("%f", &a);
	printf("\nenter num2 : ");
	scanf("%f", &b);
	printf("enter sign 1 - (+), 2 - (-), 3 - (*), 4 - (/) : ");
	scanf("%d", &s);
	
	switch(s) {
		case 1: ans = a + b;
			//printf("answer is %f", ans);
			break;
			
		case 2: ans = a - b;
			//printf("answer is %f", ans);
			break;
			
		case 3: ans = a * b;
			//printf("answer is %f", ans);
			break;
			
		case 4: ans = a / b;          
 			//printf("answer is %f", ans);
			break;
			
		default : printf("invalid input");
	}
	printf("answer is %f", ans);
	return 0;
}
