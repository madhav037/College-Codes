//Allocate and de-allocate memory for int, char and float variable at run time.
#include<stdio.h>

int main() {
	int *ptr_1;
  
  char *ptr_2;
  
  float *ptr_3;
  
  ptr_1 = (int*)malloc(1*sizeof(int));
  ptr_2 = (char*)malloc(1*sizeof(char)*1);
  ptr_3 = (float*)malloc(1*sizeof(float));
  
  printf("\nEnter the value for integer pointer : ");
  scanf("%d",ptr_1);
  
  printf("\nEnter the value for char pointer : ");
  scanf(" %c",ptr_2);
  
  printf("\nEnter the value for float pointer : ");
  scanf("%f",ptr_3);
  
  printf("\nThe value stored in integer pointer is : %d",*ptr_1);
  printf("\nThe value stored in char pointer is : %c",*ptr_2);
  printf("\nThe value stored in float pointer is : %f",*ptr_3);

  free(ptr_1);
  free(ptr_2);
  free(ptr_3);
  
  return 0;
}

