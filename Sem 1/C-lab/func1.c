//Pass an array in function to print array elements.
#include<stdio.h>

void getArray(int, int[]);
void printArray(int, int[]);

int main(){
	int n, i=0;
	scanf("%d", &n);
	
	int arr[n];
	
	getArray(n, arr);
	printArray(n, arr);
}

void getArray(int n , int arr[]){
	int i=0;
	for(i = 0; i < n; i++){
		printf("enter arr ");
		scanf("%d",&arr[i]);
	}
}
void printArray(int n , int arr[]){
	int i=0;
	for(i = 0; i < n; i++){
		printf("array = %d\n", arr[i]);
	}
}
