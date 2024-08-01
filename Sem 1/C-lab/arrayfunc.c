#include<stdio.h>
#include<string.h>

struct student
{
    int roll_num;
    char name[100];
};


int main(){
    struct student arr[3];

    for (int i = 0; i < 3; i++)
    {
        printf("enter name : ");
        scanf("%s", &arr[i].name);

        printf("enter roll num : ");
        scanf("%d", &arr[i].roll_num);
    }

    for (int i = 0; i < 3; i++)
    {
        printf("name : %s\n", arr[i].name);

        printf("roll num : %d\n", arr[i].roll_num);
    }
    
}