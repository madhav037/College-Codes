#include<stdio.h>

int main(){
    int n;
    scanf("%d",&n);

    int arr[n], arr2[n];
    for (int i = 0; i < n; i++)
    {
        printf("Enter array : ");
        scanf("%d",&arr[i]);
        arr2[i] = arr[i];
    }
    for (int i = 0; i < n; i++)
    {
        printf("%d\n",arr2[i]);
    }
}