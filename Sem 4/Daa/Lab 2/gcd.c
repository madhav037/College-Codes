#include<stdio.h>
#include<time.h>


int gcd(int a, int b, int i) {
    if (a % i == 0 && b % i == 0 && i <= a) {
        return i;
    }else {
        return gcd(a,b,i-1);
    }
}


void main() {
    int a,b, ans = 0, min = 0, max = 0;

    time_t start, end;
    double timeTaken = 0.0;
    printf("Enter num 1 : ");
    scanf("%d",&a);
    printf("Enter num 2 : ");
    scanf("%d",&b);

    start = clock();
    if (a > b) {
        min = b;
        max = a;
    } else {
        min = a;
        max = b;
    }
    for (int i = 1; i <= min; i++) {
        if (a % i == 0 && b % i == 0) {
            if (ans < i) {
                ans = i;
            }
        }
    }
    end = clock();
    printf("Gcd = %d\n",ans);
    timeTaken = (double)(end - start)/CLOCKS_PER_SEC;
    printf("Time taken loop : %f\n",timeTaken);
    start = clock();
    printf("GCD = %d\n",gcd(min,max,min));
    end = clock();
    timeTaken = (double)(end - start)/CLOCKS_PER_SEC;
    printf("Time taken rec : %f\n",timeTaken);
    
}