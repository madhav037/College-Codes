#include<stdio.h>
#include<time.h>
#include<stdbool.h>

bool prime(int n, int i) {
    if (n % i == 0 && i <=n/2 ) {
        return false;
    } else if (i <= 2) {
        return true;
    }
    prime(n,i+1);
}

void main() {
    int n , flag = 0;
    printf("Enter num : ");
    scanf("%d",&n);
    for (int i = 2; i <= n/2; i++) {
        if (n % i == 0) {
            flag = 1;   
            break;
        }
    }
    if (flag == 0) printf("prime");
    else printf("not prime");
    
    printf("%u",prime(n,2));
    

    
}