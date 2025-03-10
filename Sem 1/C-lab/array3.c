//Count number of even or odd number from an array of n numbers.
#include<stdio.h>

int main(){
	int n, even=0, odd=0, i;
	scanf("%d",&n);
	
	int num[n];
	for(i = 0; i < n; i++){
	printf("enter num %d :",i+1);
	scanf("%d",&num[i]);
	}
	
	for(i = 0; i < n; i++){
		if(num[i]%2==0){
			even++;
		}
		else{
			odd++;
		}
	}
	printf("even are %d\nodd are %d", even, odd);
}
