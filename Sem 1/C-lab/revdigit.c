#include<stdio.h>

int main(){
	int n, rem=0, digit=0;
	scanf("%d", &n);
	while(n>0){
		rem=n%10;
		n/=10;
		digit= digit*10+rem;
	}
	printf("digit is :%d", digit);
}
