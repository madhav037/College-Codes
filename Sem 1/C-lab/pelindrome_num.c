#include<stdio.h>

int main(){
	int n, x=0, rem=0, digit=0;
	scanf("%d", &n);
	x=n;
	while(n>0){
		rem=n%10;
		n/=10;
		digit= digit*10+rem;
	}
	printf("digit is :%d\n", digit);
	
	if(digit==x){
		printf("pelindrome num");
	}
	else{
		printf("not pelindrome num");
	}
}
