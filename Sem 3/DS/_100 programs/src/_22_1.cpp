#include <iostream>

using namespace std;

int main() {
    int height;
    cout << "Enter the height of the equilateral triangle: ";
    cin >> height;

    for (int i = height; i >= 1; i--) {
        for (int j = 1; j <= height - i; j++) {
            cout << " ";
        }

        for (int k = 1; k <= 2 * i - 1; k++) {
            cout << "*";
        }

        cout << endl;
    }
}
