#include<stdio.h>
#include<time.h>

void main() {
    double tt = 0;
    clock_t start, end;
    int size = 100000;
    int arr[size];
    FILE *f1;
    f1 = fopen("../worst.txt","r");
    for ( int i = 0; i < size; i++ ) {
        fscanf(f1,"%d",&arr[i]);
    }
    start = clock();
    for (int i = 1; i < sizeof(arr)/sizeof(arr[0]) - 1; i++) {
        int x = arr[i];
        int j = i - 1;
        while (x < arr[j] && j >= 0) {
            arr[j+1] = arr[j];
            j--;
        }
        arr[j+1] = x;
    }
    end = clock();
    for (int i = 0; i < sizeof(arr)/sizeof(arr[0]); i++) {
        printf("%d ",arr[i]);
    }

    tt = (double) (end - start)/CLOCKS_PER_SEC;
    printf("\n time taken = %f", tt);
}