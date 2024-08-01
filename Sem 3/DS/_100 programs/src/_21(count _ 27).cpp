// count sort
#include <iostream>
#include <vector>

using namespace std;

int findMax(vector<int>& inputArray) {
    int max = inputArray[0];
    for (int i = 0; i < inputArray.size(); i++) {
        if (max < inputArray[i]) {
            max = inputArray[i];
        }
    }
    return max;
}
vector<int> countSort(vector<int>& inputArray) {
    int max = findMax(inputArray);
    vector<int> countArray(max+1,0);

    for (int i = 0; i < inputArray.size(); i++) {
        countArray[inputArray[i]]++;
    }

    for (int i = 1; i < countArray.size(); i++) {
        countArray[i] = countArray[i-1] + countArray[i];
    }

    vector<int> outputArray(inputArray.size());

    for (int i = 0; i < inputArray.size(); i++) {
        outputArray[countArray[inputArray[i]]-1] = inputArray[i];
        countArray[inputArray[i]]--;
    }
    return outputArray;    
}

int main()
{
    vector<int> inputArray;
    while (1) {
        int n;
        cout<< "Enter Element (-1 to exit) : ";
        cin>>n;
        if (n == -1) break;
        inputArray.push_back(n);
    }
    vector<int> sortedArray;
    sortedArray = countSort(inputArray);
    
    for (int i = 0; i < sortedArray.size(); i++) {
        cout<<sortedArray[i]<< " ";
    }    
}