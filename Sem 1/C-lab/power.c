#include<stdio.h>

int main(){
	int x,y,i, pow=1;
	printf("enter base ");
	scanf("%d", &x);
	printf("enter power :");
	scanf("%d", &y);
	for(i=1; i<=y; i++){
		pow=pow*x;
	}
	printf("%d", pow);
	
	/*x=5 y=3
	x*x*x */
	
}
