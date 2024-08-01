#include<stdio.h>

int main(){
    int n,sum=0;
    scanf("%d",&n);

    int arr[n];
    for (int i = 0; i < n; i++)
    {
        printf("Enter array : ");
        scanf("%d",&arr[i]);
    }
    sum = sum + arr[1] + arr[n-2];
    printf("%d",sum);

}