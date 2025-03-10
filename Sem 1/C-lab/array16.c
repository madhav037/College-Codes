//1. Delete all duplicate elements from an array.
#include<stdio.h>

int main() {
	int n, i, j, same=1;
	scanf("%d", &n);
	
	int arr[n],nn=0;
	for(i = 0; i < n; i++){
		printf("enter %d : ", i+1);
		scanf("%d",&arr[i]);
	}
	
	for(i = 0; i < n; i++){
		for(j = i+1; j < n; j++){
			if(arr[i] == arr[j]){
				same++;	
				arr[j]=0;
			}
		}
	}
	nn= n - same-1;
	int arr2[nn];
	
		printf("total same are %d \n", same);
		for(i = 0; i < n; i++){
			arr2[i]=arr[i];
			printf("array %d \n", arr2[i]);
		}	
}
