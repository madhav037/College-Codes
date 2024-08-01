#include<stdio.h>

int main() {
	int a;
	printf("enter 1-jan, 2-feb, 3-march, 4-april, 5-may, 6-june, 7-july, 8-august, 9-sept, 10-oct, 11-nov, 12-dec : ");
	scanf("%d", &a);
	switch(a) {
		case 1:
		case 3:
		case 5:
		case 7:
		case 8:
		case 10:
		case 12: printf("days are 31");
			break;
		case 2: printf("days are 28");
			break;
		case 4:
		case 6:
		case 9:	
		case 11: printf("days are 30");
		default :
			printf("enter vaild num");
	}
}
