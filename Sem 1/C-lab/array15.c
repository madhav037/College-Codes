//5. Find missing numbers of sequence using array.(in a sequence 1,2,4,5,7,8,10, Missing numbers are 3,6,9)
#include<stdio.h>

int main() {
	int n, i, j;
	scanf("%d", &n);
	
	int arr[n];
	for(i = 0; i < n; i++){
		printf("enter %d : ", i+1);
		scanf("%d",&arr[i]);
	}
	
	for(i = 0; i < n-1; i++){
		if(arr[i]+1 != arr[i+1]){
			printf("missing number are :%d \n",arr[i]+1);
		}
	}
}
