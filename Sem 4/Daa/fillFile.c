#include<stdio.h>
#include<stdlib.h>

void main() {
    FILE *f1;
    int n = 100000;
    f1 = fopen("best.txt","w");
    for (int i = 1; i <= n; i++) {
        fprintf(f1,"%d\n",i);
    }
    fclose(f1);
    f1 = fopen("average.txt","w");
    for (int i = 0; i <= n; i++) {
        fprintf(f1,"%d\n",rand() % n);
    }
    fclose(f1);
    f1 = fopen("worst.txt","w");
    for (int i = n; i >= 0; i--) {
        fprintf(f1,"%d\n",i);
    }
    fclose(f1);
}