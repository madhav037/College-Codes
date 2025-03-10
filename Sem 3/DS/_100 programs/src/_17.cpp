// WAP to sort an Array using insertion sort
#include<iostream>

using namespace std;

void swap(int &a, int &b) {
    int temp = a;
    a = b;
    b = temp;
}

void printArray(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        cout << arr[i] << " ";
    }
}

int main() {
    int n;
    cout << "Enter number of elements : ";
    cin >> n;
    int arr[n];

    for (int i = 0; i < n; i++) {
        cout << "Enter element : ";
        cin >> arr[i];
    }
    cout << "Before sort ";
    printArray(arr,n);
    cout << endl;

    for (int i = 0; i < n; i++) {
        int j = i;
        while (j > 0 && arr[j-1] > arr[j]) {
            swap(arr[j-1],arr[j]);
            j--;
        }
    }
    cout << "After sort ";
    printArray(arr,n);
    
}