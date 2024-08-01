#include<stdio.h>
int main()
{
	int a,b,c,s;
	
	printf("\nEnter the number of rows:\t");
	scanf("%d", &c);
	
	for(a=1;a<=c;a++)
	{
		for(s=c-1;s>=a;s--)
		{
			printf(" ");
		}
		for(b=1;b<=a;b++)
		{
			printf(" %d", a);
		}
		printf("\n");
	}
}
