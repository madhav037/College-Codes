#include<stdio.h>
#include<math.h>

int main(){
	int n, x, i, rem=0, digit=0;
	scanf("%d", &n);
	x=n;
	for(i=1; i<=n; i++){
		rem=n%10;
		digit= digit+pow(rem,3);
	}
	if(digit==x){
		printf("armstrong num");
	}
	else{
		printf("not armstrong num");
	}
}
