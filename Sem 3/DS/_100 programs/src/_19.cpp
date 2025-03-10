// WAP to sort an Array using Bucket sort
#include<iostream>
#include<vector>

using namespace std;

void swap(float &a, float &b) {
    float temp = a;
    a = b;
    b = temp;
}

int main() {
    vector<vector<float>> arr(10);
    while (1) {
        float n;
        cout<<"Enter element (0 to exit): ";
        cin>>n;
        if (n == 0) break;
        int num = n * 10;
        arr[num].push_back(n);
        for (int i = 0; i < arr[num].size(); i++) {
            int j = i;
            while(j > 0 && arr[num][j-1] > arr[num][j]) {
                swap(arr[num][j-1],arr[num][j]);
                j--;
            }
        }
    }

    vector<float> sortedArray;
    for (int i = 0; i < arr.size(); i++) {
        for (int j = 0; j < arr[i].size(); j++){
            sortedArray.push_back(arr[i][j]);
        }
    }
    
    for (int i = 0; i < sortedArray.size(); i++) {
        cout<<sortedArray[i]<<" ";
    }
    
}