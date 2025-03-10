#include<stdio.h>
#include<stdbool.h>
#define size 7
int front = -1;
int rear = -1;
int arr[size];

void insert(int);
int delete();
void display();

void main() {
    int n;
    bool loop = true;
    int num = 0;
    int peepIndex = 0;
    while (loop) {
        printf("Enter 1 to push 2 to pop 3 to display 0 to break : ");
        scanf("%d", &n);
        switch (n)
        {
            case 1:
                printf("\nEnter value to insert : ");
                scanf("%d",&num);
                insert(num);
                break;
            
            case 2:
                printf("\nElement is %d\n",delete());
                break;
            
            case 3:
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

void insert(int element) {
    if (rear == size-1) {
        printf("OVERFLOW");
        return;
    }
    if (front == -1) {
        front = 0;
    }
    arr[++rear] = element;
}

int delete() {
    if (front == size-1) {
        printf("UNDERFLOW");
        return -1;
    }
    if (front == rear) {
        front == -1;
        rear == -1;
    }
    front++;
    return arr[front-1];
}

void display(){ 
    for (int i = front; i <= rear; i++) {
        printf("%d\n",arr[i]);
    }
}