import java.util.Scanner;

public class ArrayStuff {
    Scanner sc = new Scanner(System.in);
    void printArray(int[] arr) {
        for (int i = 0; i < arr.length; i++) {
            System.out.print(arr[i]  + " ");
        }
    }
    int[] getArray(int size) {
        int[] arr = new int[size];
        for (int i = 0; i < size; i++) {
            arr[i] = sc.nextInt();
        }
        return arr;
    }

    int linearSearch(int[] arr, int key) {
        for (int i = 0; i < arr.length; i++) {
            if (key == arr[i]) {
                return i+1;
            }
        }
        return -1;
    }

    int binarySearch(int[] arr, int key) {
        int start = 0;
        int end = arr.length - 1;
        int mid = (start + end) / 2;

        while (start <= end) {
            if (arr[mid] == key)  return mid + 1;

            if (key > arr[mid])  start = mid + 1;

            else  end = mid - 1;

            mid = (start + end) / 2;
        }
        return -1;
    }

    int[] BubbleSort(int[] arr) {
        int n = arr.length;
        for (int i = n-1; i >= 1; i--) {
            boolean didSwap = false;
            for (int j = 0; j <= i-1; j++) {
                if (arr[j] > arr[j+1]) {
//                    swap(arr[j], arr[j+1]);
                    int temp = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = temp;
                    didSwap = true;
                }
            }
            if (!didSwap) {
                break;
            }
        }
        printArray(arr);
        return arr;
    }

    int[] insertionSort(int[] arr) {
        int n = arr.length;
        for (int i = 0; i < n; i++) {
            int j = i;
            while (j > 0 && arr[j-1] > arr[j]) {
//                swap(arr[j-1],arr[j]);
                int temp = arr[j-1];
                arr[j-1] = arr[j];
                arr[j] = temp;
                j--;
            }
        }
        printArray(arr);
        return arr;
    }

    int[] selectionSort(int[] arr) {
        int n = arr.length;
        for (int i = 0; i <= n-2; i++) {
            int min = i;
            for (int j = i; j <= n-1; j++) {
                if (arr[j] < arr[min]) {
                    min = j;
                }
            }
//            swap(arr[min],arr[i]);
            int temp = arr[min];
            arr[min] = arr[i];
            arr[i] = temp;
        }
        printArray(arr);
        return arr;
    }

    static void divide(int arr[], int f, int l) {
        if (f < l) {
            int m = (f+l)/2;
            divide(arr,f,m);
            divide(arr,m+1,l);
            mergeSort(arr,f,m,l);
        }
    }

    static void mergeSort(int arr[], int f, int m, int l) {
        int[] M = new int[l-f+1];
        int n1 = f;
        int n2 = m+1;
        int x = 0;

        while (n1 <= m && n2 <=1) {
            if (arr[n1] <= arr[n2]) {
                M[x++] = arr[n1++];
            }else {
                M[x++] = arr[n2++];
            }
        }
        while (n1 <= m) {
            M[x++] = arr[n1++];
        }
        while (n1 <= l) {
            M[x++] = arr[n2++];
        }

        for (int i = 0, j = f; i < M.length; i++ ,j++) {
            arr[j] = M[i];
        }
    }
}
