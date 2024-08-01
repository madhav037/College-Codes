#include<stdio.h>

int sumTill(int);

int main() {
    int n;
    printf("Enter num till you want to sum : ");
    scanf("%d", &n);
    printf("%d", sumTill(n));
}

int sumTill(int n){//global
    int sum;    //static 
    sum = (n*(n+1))/2;
    return sum;
}