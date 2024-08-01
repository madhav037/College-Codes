// WAP to delete an element from array specified by user. if element is not found print a message “Element is not found” (do not take a new array).
#include<iostream>

using namespace std;

int main() {
    int n = 0;
    cout << "Enter number of elements in array : ";
    cin >> n;
    int arr[n];   

    for (int i = 0; i < n; i++) {
        int num;
        cout << "Enter element : ";
        cin >> num;
        arr[i] = num;
    }

    int element;
    bool isElement = false;
    cout << "Enter the value of element to remove : ";
    cin >> element;

    for (int i = 0; i < n; i++) {
        if (arr[i] == element) {
            arr[i] = arr[i+1];
            isElement = true;
        }
        if (isElement) {
            arr[i] = arr[i+1];
        }
        
    }

    if (!isElement) {
        cout << "Element not found!";
    }else {
        for (int i = 0; i < n-1; i++) {
        cout << arr[i] << " ";
    } 
    }
    
    
   
}