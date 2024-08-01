#include<stdio.h>
#include<stdbool.h>
#define size 3
int TOP = -1;
int arr[size];

void push(int );
int pop();
int peep(int );
void change(int , int );
void display();

void main() {
    int n;
    bool loop = true;
    int num = 0;
    int peepIndex = 0;
    while (loop) {
        printf("Enter 1 to push 2 to pop 3 to peep 4 to change 5 to display 0 to break : ");
        scanf("%d", &n);
        switch (n)
        {
        case 1:
            printf("\nEnter value to insert : ");
            scanf("%d",&num);
            push(num);
            break;
        
        case 2:
            printf("\nElement is %d\n",pop());
            break;
        
        case 3:
            printf("\nEnter index of element to look : ");
            scanf("%d",&peepIndex);
            printf("\n Element at that index is : %d\n",peep(peepIndex));
            break;
        
        case 4:
            printf("\nEnter index of element to look : ");
            scanf("%d",&peepIndex);
            printf("\nEnter value to insert : ");
            scanf("%d",&num);
            change(peepIndex,num);
            break;

        case 5:
            display();
            break;
        
        case 0:
            loop = false;
            break;
            
        default:
            break;
        }
    }
    

}

void push(int element) {
    if (TOP == size-1) {
        printf("OVERFLOW");
        return;
    }
    arr[++TOP] = element;
}

int pop() {
    if (TOP <= 0) {
        printf("UNDERFLOW");
        return -1;
    }
    TOP--;
    return arr[TOP+1];
}

int peep(int i) {
    if (TOP - i + 1 <= 0) {
        printf("UNDERFLOW");
        return -1;
    }
    return arr[TOP-i+1];
}

void change(int i, int element) {
    if (TOP - i + 1 <= 0) {
        printf("UNDERFLOW");
        return;
    }
    arr[TOP-i+1] = element;
}

void display() {
    for (int i = 0; i <= TOP; i++) {
        printf("%d\n",arr[i]);
    }
}