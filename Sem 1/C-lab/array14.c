//4. Count total duplicate elements in an array.
#include<stdio.h>

int main() {
	int n, i, j, same=1;
	scanf("%d", &n);
	
	int arr[n];
	for(i = 0; i < n; i++){
		printf("enter %d : ", i+1);
		scanf("%d",&arr[i]);
	}
	
	for(i = 0; i < n; i++){
		for(j = i+1; j < n; j++){
			if(arr[i] == arr[j]){
				same++;	
			}
		}
	}
	
		printf("total same are %d \n", same);
}
