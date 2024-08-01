//Find factorial of a number using function and recursive function
#include<stdio.h>

int factorial(int);

int main(){
	int n, ans=0;
	printf("enter num.");
	scanf("%d", &n);
	
	ans = factorial(n);
	printf("factorial is %d", ans);
}

int factorial(int n){
	int fact = 0;
	if(n==0){
		return 1;
	}
	else if(n==1){
		return 1;
	}
	else{
		return n*factorial(n-1);
	}	
}
