#include <stdio.h>

int fibonacci(int n);

int main () {
    int n;
    printf("Enter num");
    scanf("%d", &n);

    printf("%d",fibonacci(n));
}

int fibonacci(int n) {
    if (n <= 1) {
        return n;
    } else {
        
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}