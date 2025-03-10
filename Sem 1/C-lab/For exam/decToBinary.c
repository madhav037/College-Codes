#include<stdio.h>

int decTobinary(int);

int main() {
    int dec, bin;
    printf("Enter decimal :");
    scanf("%d", &dec);
    bin = decTobinary(dec);
    printf("Binary num of %d is %d", dec, bin);

}

int decTobinary(int dec){
    if(dec == 0){
        return 0;
    }
    else{
        return (dec % 2 + 10 * (decTobinary(dec / 2)));
    }
}