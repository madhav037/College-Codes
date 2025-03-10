#include<stdio.h>

float simpleIntrest(int, int, int);

int main() {
    int p, r, t;
    printf("Enter P & r and T : ");
    scanf("%d %d %d", &p, &r, &t);
    printf("%f", simpleIntrest(p,r,t));    
}

float simpleIntrest(int P, int R, int T){
    return (P*R*T)/100.00;
}