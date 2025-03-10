#include<stdio.h>

int main(){
	int a,b,count=0, i=0,j=0;
	scanf("%d",&a);
	scanf("%d",&b);
	
	for(i = a; i <= b; i++)
	{
	count=0;
		for(j=1; j<=i; j++)
		{
			if(i%j == 0)
			{
			count++;
			}
		}
			if(count == 2)
			{
			printf("prime is %d\n",i);

		}
	}
	
}
