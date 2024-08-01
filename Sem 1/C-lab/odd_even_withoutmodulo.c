#include <stdio.h>
int main()
{
    float number,new;
 
    printf("Enter a number to check even or odd");
    scanf("%d", &number);
 new = number/2;
    if(new == number*2)
          printf("%d is even.", number);
    else
        printf("%d is odd.", number);
}