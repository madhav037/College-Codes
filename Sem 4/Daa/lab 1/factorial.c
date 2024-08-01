#include<stdio.h>
#include<time.h>

int rec (int num);

int main() {
    double tt = 0;
    clock_t start, end;
    unsigned long long int num, ans = 1;
    printf("Enter number : ");
    scanf("%d",&num);

    start = clock();

    for (int i = 1; i <= num; i++) {
        ans = ans * i;
    }
    printf("recursion = %d \n",rec(num));
    printf("ans is %lf",ans);

    end = clock();
    tt = (double) (end - start)/CLOCKS_PER_SEC;

    printf("\n time taken = %f", tt);
}

int rec(int num) {
    if (num == 1) {
        return 1;
    }else { 
        return num * rec(num-1);
    }
}