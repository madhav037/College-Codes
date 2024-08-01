//1. Count numbers higher than the average of an array.
#include<stdio.h>

int main() {
	int n, i, avg=0, sum=0, count=0;
	scanf("%d", &n);
	
	int arr[n];
	for(i = 0; i < n; i++){
		printf("enter %d : ", i+1);
		scanf("%d",&arr[i]);
	}
	
	for(i = 0; i < n; i++){
		sum = sum + arr[i];
		avg = (sum)/n;
	}
	printf("\naverage is %d", avg);
	
	for(i = 0; i < n; i++){
		if(arr[i] > avg){
			count++;
		}
	}
	printf(" \ntotal num above avg are %d", count);
	
}
