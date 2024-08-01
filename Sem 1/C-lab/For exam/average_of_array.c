#include<stdio.h>

int main(){
    int n, sum=0;
    float avg;
    scanf("%d",&n);

    int arr[n];
    for (int i = 0; i < n; i++)
    {
        printf("Enter array : ");
        scanf("%d",&arr[i]);
        sum = sum + arr[i];
    }
    avg = sum/(float)n;
    printf("%f",avg);
    
}