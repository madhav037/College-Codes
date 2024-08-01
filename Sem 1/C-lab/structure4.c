//4. Create structure student with name, percentage and age. Read data of 5 students using array of structure.
#include<stdio.h>

struct student{
	char name[100];
	float percentage;
	int age;
};

int main(){
	struct student s[5];
	int i;
	
	for(i=0; i < 5; i++){
		printf("enter name of student %d : ", i+1);
		scanf("%s", &s[i].name);	
		printf("enter percentage of student %d : ", i+1);
		scanf("%f", &s[i].percentage);
		printf("enter age of student %d : ", i+1);
		scanf("%d", &s[i].age);	
	}
	
	for(i=0; i < 5; i++){
		printf("name is %s age is %d and has %f\n",s[i].name,s[i].age,s[i].percentage);
	}
}
