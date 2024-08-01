#include<stdio.h>
#include<stdbool.h>
#include<stdlib.h>

void insert(int element);
void display();
int delete();

struct Node {
    int val;
    struct Node *next;
};

struct Node *Head = NULL;

void main() {
    Head = (struct Node *)malloc(sizeof(struct Node));
    Head = NULL;
    bool flag = true;
    while (flag) {
        printf("Enter 1 to insert, 2 to delete, 3 to display, 0 to exit : ");
        int n;
        scanf("%d", &n);
        switch (n) {
            case 1: {
                printf("\nEnter the element to insert : ");
                int element;
                scanf("%d", &element);
                insert(element);
                break;
            }
            case 2: {
                int element = delete();
                printf("\nThe deleted element is %d\n", element);
                break;
            }
            case 3: {
                display();
                break;
            }
            case 0: {
                flag = false;
                break;
            }
            default: {
                break;
            }
        }
    }
    
}

void insert(int element) {
    struct Node *new;
    new = (struct Node *)malloc(sizeof(struct Node));
    new->val = element;
    if (Head == NULL) {
        Head = new;
        new->next = NULL;
        return;
    }
    struct Node *temp;
    temp = (struct Node *)malloc(sizeof(struct Node));
    temp = Head;
    while (temp->next != NULL) {
        temp = temp->next;
    }
    temp->next = new;
    new->next = NULL;
}

int delete() {
    struct Node *temp;
    if (Head == NULL) {
        printf("UNDERFLOW");
        return -1;
    }
    temp = (struct Node *)malloc(sizeof(struct Node));
    temp = Head;
    Head = Head->next;
    return temp->val;
}


void display() {
    struct Node *temp;
    temp = (struct Node *)malloc(sizeof(struct Node));
    temp = Head;
    while (temp != NULL) {
        printf("%d\n", temp->val);
        temp = temp->next;
    }
}