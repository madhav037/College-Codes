#include<stdio.h>

int main() {
	int a, ans;
	printf("enter num: ");
	scanf("%d", &a);
	
	ans = (a%2==0) ? (1) : (0);
	if(ans==1){
		printf("even");
	}
	else {
		printf("odd");
	}
}
