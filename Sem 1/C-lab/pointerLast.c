//5. Store n elements in an array and print the elements using pointer.
#include<stdio.h>

int main(){
	int n, i=0;
	scanf("%d", &n);
	
	int arr[n];
	for(i=0; i < n; i++){
		printf("enter array : ");
		scanf("%d", &arr[i]);	
	}
	
	int *ptr;
	for(i=0; i < n; i++){
		ptr = &arr[i];
		printf("array : %d\n", *ptr);
	}
}
