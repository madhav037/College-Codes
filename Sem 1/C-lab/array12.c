//2. Calculate the average, geometric and harmonic mean of n elements in an array.
#include<stdio.h>
#include<math.h>

int main() {
	int n, i, avg=0, sum=0, count=0;
	float geo=1, geomean=0, harm=0, harmonic=0;
	scanf("%d", &n);
	
	int arr[n];
	for(i = 0; i < n; i++){
		printf("enter %d : ", i+1);
		scanf("%d",&arr[i]);
	}
	
	for(i = 0; i < n; i++){
		sum = sum + arr[i];
		avg = (sum)/n;
	}
	printf("\naverage is %d", avg);
	
	for(i = 0; i < n; i++){
		if(arr[i] > avg){
			count++;
		}
		geo = geo*arr[i];
		geomean = sqrt(geo);
		
		harm= harm + 1/arr[i];
	}
	harmonic = n/harm;
	printf(" \ntotal num above avg are %d", count);
	printf(" \ngeometric mean = %f", geomean);
	printf(" \nharmonic mean =   %f", harmonic);

	
}
