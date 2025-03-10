#include<stdio.h>

int power(int base, int exp);

int main() {
    int base, exp, ans = 1;
    printf("enter base : ");
    scanf("%d", &base);
    printf("enter exp : ");
    scanf("%d", &exp);

    for (int i = 0; i < exp; i++) {
        ans *= base;
    }
    
    printf("ans  = %d", ans);
    printf("rec  = %d", power(base, exp));
    
}

int power(int base, int exp) {
    if (exp == 0) {
        return 1;
    } else {
        return base * power(base, exp-1);
    }
}