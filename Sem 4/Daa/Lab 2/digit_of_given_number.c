#include<stdio.h>
#include<time.h>

int countDigit(int n) {
    if (n <= 1) {
        return 1;
    } else {
        return countDigit(n/10) + 1;
    }
}

void main() {
    int n = 1234567891, count = 0;
    double timeTaken = 0.0;
    time_t start,end;

    start = clock();
    int ni = n;
    while (n > 0) {
        count++;
        n /= 10;
    }
    end = clock();
    timeTaken = (double)(end - start)/CLOCKS_PER_SEC;   
    printf("total digits are : %d \nloop time : %f\n",count,timeTaken);

    start = clock();
    count = countDigit(ni);
    end = clock();
    timeTaken = (double)(end - start)/CLOCKS_PER_SEC; 
    printf("total digits are : %d \nrec time : %f",count,timeTaken);
}