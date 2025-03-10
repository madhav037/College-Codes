#include<stdio.h>

int main(){
	int n=1, sum=0, count=0;
	float avg=0.0;
	while(1){
		if(n==0){
			break;
		}
		printf("enter num (type 0 to break) : ");
		scanf("%d",&n);
		sum=sum+n;
		count++;
	}
	avg = sum/(float)(count-1);
	printf("sum is %d and average is %.2f", sum, avg);
}
