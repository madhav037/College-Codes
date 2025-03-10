#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

void linearSearch(int arr[], int element, int start, int size)
{
    // printf("%d\n",start);
    if (start > size)
    {
        printf("element not found! %d",start);
        return;
    }
    if (arr[start] == element)
    {
        printf("element found at %d", start);
        return;
    }
    linearSearch(arr, element, start + 1, size);
}

int main()
{
    int size;
    printf("Enter size of array : ");
    scanf("%d", &size);
    int arr[size];

    for (int i = 0; i < size; i++)
    {
        arr[i] = rand() % size;
    }
    int searchElement;
    for (int i = 0; i < size - 1; i++)
    {
        printf("%d ",arr[i]);
    }
    printf("Enter element to search : ");
    scanf("%d", &searchElement);

    bool flag = false;
    for (int i = 0; i < size; i++)
    {
        if (searchElement == arr[i])
        {
            printf("Element found!\nat index : %d\n", i);
            flag = true;
            break;
        }
    }
    if (!flag)
    {
        printf("Element not found!\n");
    }

    linearSearch(arr, searchElement, 0,size);
}