// WAP to check weather number is present in array or not (using recursion only) and the function’s syntax is given below
// Int isInArray(int a[],int m);
// Where int a[] is Array of integer and m is element to be searched.
#include<iostream>

using namespace std;

int isArray(int a[], int m, int index) {
    if (a[index] == m) {
        return index;
    }else {
        index = index + 1;
        isArray(a,m, index);
    }
}

int main() {
     int n = 0;
    cout << "Enter number of elements in array : ";
    cin >> n;
    int a[n];   

    for (int i = 0; i < n; i++) {
        int num;
        cout << "Enter element : ";
        cin >> num;
        a[i] = num;
    }

    int element;
    cout << "Enter the value of element to search : ";
    cin >> element;

    cout << "Position is : " << isArray(a,element, 0) + 1;
}