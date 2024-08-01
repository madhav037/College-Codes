#include<stdio.h>

void print(int num);

int main() {
    int num;
    printf("Enter number : ");
    scanf("%d",&num);

    for (int i = 1; i <= num; i++) {
        printf("%d \n",i);
    }

    printf("\nwith recursion \n");
    print(num);
    
}

void print(int num) {
    if (num == 0) {
        return;
    }else {
        printf("%d ",num);
        num--;
        print(num);
    }
}