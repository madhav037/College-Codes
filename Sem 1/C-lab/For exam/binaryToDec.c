#include<stdio.h>

int binaryTodec(int, int, int);

int main() {
    unsigned int binary, decimal;
    printf("Enter binary number : ");
    scanf("%d", &binary);
    decimal = binaryTodec(binary, 1, 0);
    printf("Decimal value of %d is %d",binary, decimal);
}

int binaryTodec(int b, int c, int t){
    if(b > 0){
        t += (b % 10) * c; 
        binaryTodec(b / 10, c * 2, t);
    }
    else{
        return t;
    }
}