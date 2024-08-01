#include<stdio.h>
#include<time.h>

void printArray(int arr[], int i) {
    if (i < 0) {
        return;
    }else {
        printf("%d\n", arr[i]);
        printArray(arr,i-1);
    }
}


void main() {
    double timeTaken = 0.0;
    int arr[] = {1,2,3,4,5,6,7,8,9,10};
    time_t start, end;
    start = clock();
    for (int i = 0; i < 10; i++) {
        printf("%d\n",arr[i]);
    }
    end = clock();
    timeTaken = (double)(end - start)/CLOCKS_PER_SEC;
    printf("time taken by loop is : %f\n",timeTaken);

    start = clock();
    printArray(arr,9);
    end = clock();
    timeTaken = (double)(end - start)/CLOCKS_PER_SEC;
    printf("time taken by rec is : %f\n",timeTaken);
}