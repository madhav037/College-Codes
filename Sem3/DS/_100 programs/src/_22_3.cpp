#include <iostream>

using namespace std;

int main() {
    int height;
    cout << "Enter the height of the pattern: ";
    cin >> height;

    for (int i = height; i >= 1; i--) {
        for (int j = 1; j <= i; j++) {
            cout << "*";
        }

        for (int k = 1; k <= 2 * (height - i); k++) {
            cout << " ";
        }

        for (int l = 1; l <= i; l++) {
            cout << "*";
        }

        cout << endl;
    }
}
