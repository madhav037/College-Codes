// WAP to sort an Array using Selection sort.
#include<iostream>

using namespace std;

void swap(int &a, int &b) {
    int temp = a;
    a = b;
    b = temp;
}

void printArray(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        cout<<arr[i]<< " ";
    }
}

int main() {
    int n;
    cout<<"Enter total number of elements : ";
    cin >> n;
    int numbers[n];

    for (int i = 0; i < n; i++) {
        cout<< "Enter element : ";
        cin>>numbers[i];
    }
    cout << "before sort ";
    printArray(numbers,n);
    cout << endl;


    //selection sort begins
    for (int i = 0; i <= n-2; i++) {
        int min = i;
        for (int j = i; j <= n-1; j++) {
            if (numbers[j] < numbers[min]) {
                min = j;
            }
        }
        swap(numbers[min],numbers[i]);
    }    
    cout << "After sort ";
    printArray(numbers,n);   
}
