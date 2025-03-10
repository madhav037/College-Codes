//get n numbers form user and print it in normal and reverse order
#include<stdio.h>

int main(){
	int n, i;
	printf("enter length");
	scanf("%d", &n); 
	
	int num[n];
	
	for(i = 0; i< n; i++){
	printf("enter num %d :",i+1);
	scanf("%d",&num[i]);
	}
	
	printf("\nin serial order :\n");
	for(i=0; i<n; i++){
	printf("\n%d",num[i]);
	}
	
	printf("\nin reverse order :\n");
	for(i=n-1; i>=0; i--){
	printf("\n%d",num[i]);
	}
} 
