#include<stdio.h>

float avg(float,float,float);

int main() {
	float a,b,c,ans;
	scanf("%f",&a);
	scanf("%f",&b);
	scanf("%f",&c);
	
	ans = avg(a,b,c);
	printf("%f", ans);
}

float avg(float a,float b,float c){
	float avg=0, sum=0;
	sum = a + b + c;
	avg = sum/(float)3;
	return avg;
}
