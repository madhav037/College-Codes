// WAP to enter an element at specific position into array. (Do not take a new array)
#include<iostream>

using namespace std;

int main() {
    int n = 0;
    cout << "Enter number of elements in array : ";
    cin >> n;
    int arr[n+1];   

    for (int i = 0; i < n; i++) {
        int num;
        cout << "Enter element : ";
        cin >> num;
        arr[i] = num;
    }

    int position, element;
    cout << "Enter the position and value of element to insert : ";
    cin >> position >> element;

    for (int i = position; i < n+1; i++) {
        int temp = arr[i];
        arr[i] = element;
        element = temp;

    }

    for (int i = 0; i < n+1; i++) {
        cout << arr[i] << " ";
    }   
}