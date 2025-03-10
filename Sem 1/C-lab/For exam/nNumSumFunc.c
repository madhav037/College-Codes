#include<stdio.h>

int sumTill(int);

int main() {
    int num;
    printf("Enter num till you want to sum : ");
    scanf("%d", &num);
    printf("%d", sumTill(num));
}

int sumTill(int n){
    return (n*(n+1))/2;
}