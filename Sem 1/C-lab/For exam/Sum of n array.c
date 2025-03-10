#include<stdio.h>

int main(){
    int n;
    int sum=0;
    scanf("%d",&n);

    int arr[n];
    for (int i = 0; i < n; i++)
    {
        printf("Enter array : ");
        scanf("%d",&arr[i]);
        sum = sum + arr[i];
    }
    printf("%d",sum);
    
}