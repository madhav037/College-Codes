#include<stdio.h>

int main(){
	int n, sum=0, ld=0, fd=0;
	printf("enter num :");
	scanf("%d", &n);
	ld=n%10;
	while(n>0){
		fd=n%10;
		n/=10;
	}
	sum = ld + fd;
	printf("sum is :%d",sum);
} 
