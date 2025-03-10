#include<stdio.h>
#include<time.h>

int power(int base, int exp);

int main() {
    double timeTaken = 0.0;
    time_t start,end;

    int base, exp, ans = 1;
    printf("enter base : ");
    scanf("%d", &base);
    printf("enter exp : ");
    scanf("%d", &exp);

    start = clock();
    for (int i = 0; i < exp; i++) {
        ans *= base;
    }
    end = clock();
    
    printf("ans  = %d", ans);
    timeTaken = (double)(end - start)/CLOCKS_PER_SEC;   
    printf("Time taken loop : %f\n",timeTaken);
    
    start = clock();
    printf("rec  = %d", power(base, exp));
    end = clock();
    timeTaken = (double)(end - start)/CLOCKS_PER_SEC;   
    printf("Time taken rec : %f\n",timeTaken);
}

int power(int base, int exp) {
    if (exp == 0) {
        return 1;
    } else {
        return base * power(base, exp-1);
    }
}