#include<stdio.h>

int main(){	
	int a[10] = {1,2,3,4,5,6,7,8,9,10};
	int *ptr,i,sum=0;
	ptr=a;
	
	for(i=0;i<10;i++)
	{
	sum=sum+*(ptr+i);
		}	
		
		printf("sum= %d", sum);
		return 0;
}
