#include<stdio.h>

int summ (int n);

int main() {
    int num, sum = 0;
    printf("Enter number : ");
    scanf("%d",&num);

    for (int i = 1; i <= num; i++) {
        sum += i;
    }

    printf("sum is %d", sum);

    printf("rec = %d", summ(num));
    
}

int summ (int n) {
    if (n == 0) {
        return 0;
    }else {
        return n + summ(n-1);
    }
}