#include<stdio.h>

int main(){
    int n, odd=0, even=0;
    scanf("%d",&n);

    int arr[n];
    for (int i = 0; i < n; i++)
    {
        printf("Enter Array : ");
        scanf("%d",&arr[i]);
        if (arr[i] % 2 == 0) { even++; }
        else {odd++;}
    }
    printf("odd = %d  even = %d", odd, even);
}