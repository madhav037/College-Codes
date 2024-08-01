#include <iostream>

using namespace std;

int main() {
    int height, count = 1;
    char countAlpha = 'A';
    cout << "Enter the height of the equilateral triangle: ";
    cin >> height;

    for (int i = 1; i <= height; i++) {
        for (int j = 1; j <= height - i; j++) {
            cout << " ";
        }

        for (int k = 1; k <= 2 * i - 1; k++) {
            if (i % 2 == 0) {
                cout << countAlpha;
                countAlpha++;
            }else {
                cout << count;
                count++;
            }
        }

        cout << endl;
    }
}
