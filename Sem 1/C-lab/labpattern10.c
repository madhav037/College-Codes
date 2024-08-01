#include<stdio.h>

int main() {
	int i, space, rows, sum=0, summ=0;
	scanf("%d", &rows);
	for(i=1; i<=rows; ++i,sum=0){
	for(space=1; space<=rows-i; ++space){
	printf(" ");
	}
	while(sum!=2*i-1) {
    if(i%2==0){
	    //while(sum!=2*i-1) {
	    printf("a");
	    //++sum;
	} 
    
    else{
        while(summ!=2*i-1) {
	    printf("%d",space);
	    ++summ;
	}
    }
	++sum;
	}
	printf("\n");
	}
	return 0;
}
