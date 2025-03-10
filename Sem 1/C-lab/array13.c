//3. Sort elements of an array in an ascending order.
#include<stdio.h>

int main() {
	int n, i, j, c;
	scanf("%d",&n);
	
	int arr[n];
	for(i = 0; i < n; i++){
		printf("enter %d : ", i+1);
		scanf("%d",&arr[i]);
	}
	
	
	for(i = 0; i < n; ++i){
		for(j = i+1; j < n; ++j){//13526
			if(arr[i] < arr[j]){
				c = arr[i];
				arr[i]= arr[j];
				arr[j]= c;
			}
		}
	}
	
	for(i = 0; i < n; i++){
		printf("array is %d \n", arr[i]);
	}
	
}
