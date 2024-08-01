#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

void binarySearch(int low, int high, int search, int *arr)
{
    int start = 0;
    int end = high;
    bool flag = true;
    int mid;

    while (start < end)
    {
        mid = (start + end)/2;
        if (arr[mid] > search)
        {
            end = mid - 1;
            
        }
        else if (arr[mid] < search)
        {
            end = mid + 1;
        }
        else if (arr[mid] == search)
        {
            printf("element found at index %d", mid);
            flag = false;
            break;
        }
    }
    if (flag)
        printf("Element not found!");
}

void main()
{
    int size;
    printf("Enter size of array : ");
    scanf("%d", &size);
    int arr[size];

    for (int i = 0; i < size - 1; i++)
    {
        arr[i] = rand() % size;
    }

    for (int i = 0; i < sizeof(arr) / sizeof(arr[0]) - 1; i++)
    {
        for (int j = 0; j < sizeof(arr) / sizeof(arr[0]) - i - 1; j++)
        {
            if (arr[j] > arr[j + 1])
            {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
    int searchElement;
    printf("Enter element to search : ");
    scanf("%d", &searchElement);
    binarySearch(0, size - 1, searchElement, arr);
}