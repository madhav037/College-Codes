// WAP to find a quotient and reminder of 2 number (bigger number should be divided by lower number) and you are not allowed to use a division and quotient operator.
#include<iostream>

using namespace std;

int main() {
    int divisor, divident, quotient = 0,remaider = 0;
    cout << "Enter number to divide with : ";
    cin >> divisor;
    cout << "Enter number to divide : ";
    cin >> divident;

    while (1) {
        if ((divisor * quotient) <= divident) {
            quotient++;
        }
        else{
            quotient--;
            remaider = divident - (divisor * quotient);
            break;
        }
    }
    
    cout << "quotient = " << quotient <<" remainder = " << remaider;

    // divident = divisor * quotient + remiander
}