#include<stdio.h>

int main(){
	int arr[5], sum=0;
	for (int i = 0; i < 5; i++)
	{
        printf("enter array :");
		scanf("%d", &arr[i]);
        if(arr[i]%2==0){
			sum = sum + arr[i];
		}
    }
	printf("%d", sum);
}