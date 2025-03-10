//Read five person height and weight and count the number of person having height greater than 170 and weight less than
// 50.
#include<stdio.h>

int main(){
	int n, person=0, i;
	scanf("%d",&n);
	
	int height[n], weight[n];
	
	printf("for height :");
	for(i = 0; i < n; i++){
	printf("enter num %d :",i+1);
	scanf("%d",&height[i]);
	}
	
	printf("for weight :");
	for(i = 0; i < n; i++){
	printf("enter num %d :",i+1);
	scanf("%d",&weight[i]);
	}
	
	for(i = 0; i < n; i++){
		if(height[i]>170 && weight[i]<50){
			person++;
		}
	}
	printf("person having height greater than 170 and weight less than 50 are %d", person);
}
