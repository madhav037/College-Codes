// Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in sorted order.
#include<iostream>
#include<vector>

using namespace std;

void writeArray(int num[], int size) {
    for (int i = 0; i < size; i++) {
        int number;
        cout << "Enter element of array : ";
        cin >> number;
        num[i] = number;
    }
}

void printArray(int num[], int size) {
    for (int i = 0; i < size; i++) {
        cout << num[i] << " ";
    }
    
}

int main() {
    int n1;
    int n2;
    cout << "Enter size of n1 : ";
    cin >> n1;
    cout << "Enter size of n2 : ";
    cin >> n2;

    int num1[n1];
    int num2[n2];
    vector<int> finalArray;
    // int ptr1 = 0, ptr2 = 0;

    cout << "Array 1 :" << endl;
    writeArray(num1,n1);
    cout << "Array 2 :" << endl;
    writeArray(num2,n2);

    for (int i = 0; i < n1; i++) {
        for (int j = 0; j < n2; j++) {
            if (num1[i] == num2[j]) {
                finalArray.push_back(num1[i]);
            }
        }
    }
    
    for (int i = 0; i < finalArray.size(); i++) {
        cout << finalArray[i] << " ";
    }
    


    // printArray(num1,n1);
}