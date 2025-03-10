#include<stdio.h>

struct time
{
    int h;
    int m;
    int s;
};


int main(){
    int seconds=0, min=0, hr=0;
    
    struct time t1;
    printf("enter hh::mm::ss - ");
    scanf("%d %d %d", &t1.h, &t1.m, &t1.s);

    struct time t2;
    printf("enter hh::mm::ss - ");
    scanf("%d %d %d", &t2.h, &t2.m, &t2.s);

    seconds = t1.s + t2.s;
    if(seconds >= 60){
        seconds = seconds - 60;
        min++;
    }

    min = min + t1.m + t2.m;
    if (min>60){
        min = min - 60;
        hr++;
    }

    hr = hr + t1.h + t2.h;

    printf("%d::%d::%d", hr, min, seconds);
    
}