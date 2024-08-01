//3. Demonstrate difference between structure and union.
#include<stdio.h>

struct structure{
	int a;
	char b[100];
	float c;
};

union unionex{
	int q;
	char w[100];
	float e;
};

int main(){
	struct structure s;
	union unionex u;
	
	printf("enter structure info : %d\n",sizeof(s));

	printf("enter union info : %d\n",sizeof(u));

}
