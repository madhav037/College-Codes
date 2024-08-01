//4. Find Max, Min, Sum, Avg. of given numbers from an array.
#include<stdio.h>

int main(){
	int n, min=0, max=0, sum=0, avg=0, i;
	scanf("%d",&n);
	
	int num[n];
	for(i = 0; i < n; i++){
	printf("enter num %d :",i+1);
	scanf("%d",&num[i]);
	}
	
	for(i = 0; i < n; i++){
		sum=sum+num[i];
		
		if(max<num[i]){
			max=num[i];
		}
	}
	min = max;
	for(i = 0; i < n; i++){
			if(min>num[i]){
			min=num[i];
		}
	}
	avg = (sum)/n;
	printf("max is %d\nmin is %d\nsum is %d\navg is %d", max, min, sum, avg);
}
