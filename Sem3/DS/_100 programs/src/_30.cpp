// WAP to convert a Decimal to Binary
#include<iostream>
#include<string>

using namespace std;

int main() {
    int deci;
    string answer = ""; 
    cout << "Enter decimal number : ";
    cin >> deci;

    while (deci > 0) {
        int rem = deci % 2;
        if (rem == 1) {
            answer += 49;
        }else {
            answer += 48;
        }
        deci /= 2;
    }
    answer = string(answer.rbegin(), answer.rend());
 
    cout << answer;
       
}