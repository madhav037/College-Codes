// WAP to find a power a^b (without using power and multiplication operation).
#include <iostream>
#include <cmath>

using namespace std;

int power(int a, int b) {
    if (b == 0) {
        return 1;
    } else if (b % 2 == 0) {
        int temp = power(a, b/2);
        return temp * temp;
    } else {
        int temp = power(a, (b-1)/2);
        return a * temp * temp;
    }
}

int powerOther(int a, int b) {
    int ans = 1;
    for (int i = 0; i < b; i++) {
        ans *= a;
    }
    return ans;
    
}

int powerOtherOther(int a, int b) {
    return expf(b * log(a));
}

int main() {
    int a, b;
    cout << "Enter the base: ";
    cin >> a;
    cout << "Enter the exponent: ";
    cin >> b;
    cout << a << "^" << b << " = " << power(a, b) << endl;
    cout << a << "^" << b << " = " << powerOther(a, b) << endl;
    cout << a << "^" << b << " = " << powerOtherOther(a, b) << endl;
}
