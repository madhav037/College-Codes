// WAP to convert a Binary to Decimal.
#include<iostream>
#include<math.h>

using namespace std;

int main() {
    int n, i = 0;
    int deci = 0;
    cout << "Enter binary number : ";
    cin >> n;

    while (n > 0) {
        int rem = n % 10;
        deci += pow(2,i) * rem;
        i++;
        n /= 10;
    }

    cout << "Decimal is : " << deci;
}