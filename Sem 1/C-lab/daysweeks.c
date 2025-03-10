#include<stdio.h>

int main() {
	int d, years=0, months=0, days=0, i=0, j=0;
	scanf("%d",&d);
	years=d/365;
	months=(d%365)/12;
	d=(d%365)%12;

	printf("years = %d\n months = %d\n days = %d",&years, &months, &d); 
}
