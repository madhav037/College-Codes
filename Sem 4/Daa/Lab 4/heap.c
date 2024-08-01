#include<stdio.h>
#include<time.h>

void heapfy(int arr[], int i, int n) {
    int l = i * 2 + 1;
    int r = i * 2 + 2;
    int largest = i;
    if (l < n && arr[l] > arr[largest]) {
        largest = l;
    }
    if (r < n && arr[r] > arr[largest]) {
        largest = r;
    }
    if (largest != i) {
        int temp = arr[i];
        arr[i] = arr[largest];
        arr[largest] = temp;
        heapfy(arr, largest, n);
    }
}

void main() {
    double tt = 0;
    clock_t start, end;
    int size = 100000;
    int arr[] = 
    FILE *f1;
    f1 = fopen("../worst.txt","r");
    for ( int i = 0; i < size; i++ ) {
        fscanf(f1,"%d",&arr[i]);
    }
    int n = sizeof(arr)/sizeof(arr[0]);
    // int heapSize = sizeof(arr)/sizeof(arr[0]); 
    for(int i = n/2-1; i >= 0; i--) {
        heapfy(arr,i,n);
    }
    start = clock();
    
    for (int i = n - 1; i >= 0; i--) {
        int temp = arr[0];
        arr[0] = arr[i];
        arr[i] = temp; 
        heapfy(arr, 0, i);
    }
    end = clock();

     
    for (int i = 0; i < n; i++) {
        printf("%d ",arr[i]);
    }

    tt = (double) (end - start)/CLOCKS_PER_SEC;
    printf("\n time taken = %f", tt);
}