#include<stdio.h>
#include<string.h>

struct student{
	char name[100];
	long int endrollment_no;
	int roll_num;
	int maths;
};

int main(){
	struct student s1;
	strcpy(s1.name, "madhav");
	s1.endrollment_no = 22010101100;
	s1.roll_num = 323;
	s1.maths = 27;
	
	printf("%s\n%ld\n%d\n%d", s1.name, s1.endrollment_no, s1.roll_num, s1.maths);
	
	return 0;
}
