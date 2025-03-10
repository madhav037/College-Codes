#include<stdio.h>

int main(){
	int n, i, sum=0, factor;
	scanf("%d", &n);
	for(i=1; i<n; i++){
		if(n%i==0){
			factor=i;
			sum=sum+factor;	
		}
	}
	if(sum==n){
		printf("perfect number");
	}
	else{
		printf("not perfect");
	}
}
