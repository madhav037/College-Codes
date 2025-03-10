//Calculate the sum of n numbers entered by the user using malloc().
#include <stdio.h>

int main()
{
    int i;
    int count;
    int *arr;
    int sum = 0;

    printf("Enter the total number of elements you want to enter : ");
    scanf("%d", &count);

    arr = (int *)malloc(count * sizeof(int));

    for (i = 0; i < count; i++)
    {
        printf("Enter element %d : ", (i + 1));
        scanf("%d", arr + i);

        sum += *(arr + i);
    }

    printf("sum is %d \n", sum);

    free(arr);
    return 0;
}
