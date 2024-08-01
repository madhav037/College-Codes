//1. Create, declare and initialize structure employee.
#include<stdio.h>

struct employee{
	char name[1000];
	int salary;
	int id_num;
};

int main() {
	struct employee ep1;
	printf("enter name : ");
	scanf("%s", &ep1.name);
	
	printf("\nenter salary : ");
	scanf("%d", &ep1.salary);
	
	printf("\nenter id number : ");
	scanf("%d", &ep1.id_num);
	
	printf("\nname is %s", ep1.name);
	printf("\nname is %d", ep1.salary);
	printf("\nname is %d", ep1.id_num);
}
