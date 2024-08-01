#include<stdio.h>

void Lab123();
void Lab4(char,int,int,int,int);

int main() {
    int Lab, num, num1, num2, num3;
    printf("Enter Lab number : ");
    scanf("%d", &Lab);

    char group;

    switch (Lab)
    {
    case 1:
            Lab123();
        break;
    case 2:
            Lab123();
        break;
    case 3:
            Lab123();
        break;
    case 4:
        printf("Enter a or b : ");
        scanf("%c", &group);

        printf("Enter Question Number : ");
        scanf("%d", &num);

        if(num == 3){
            printf("Enter num 1");
            scanf("%d",&num1);
            printf("Enter num 2");
            scanf("%d",&num2);
        }
        else if (num == 4)
        {
            printf("Enter num 1");
            scanf("%d",&num1);
            printf("Enter num 2");
            scanf("%d",&num1);
            printf("Enter num 3");
            scanf("%d",&num3);
        }
        else if (num == 5)
        {
            printf("Enter radius : ");
            scanf("%d",&num1);
        }
        
            Lab4(group, num, num1, num2, num3);
    
    default:
        break;
    }
}

void Lab123(){
    printf("No Programs Here\n");
    printf("Do algorithm by yourself\n");
}

void Lab4(char group, int num, int num1, int num2, int num3){
    if(group == 'a' || group == 'A'){
        switch (num)
        {
        case 1:
            printf("Hello world");
            break;

        case 2:
            printf("Address single line\nsdffsdfvfegfbn,\ngrgwggsrsgv\ngfrg\nfs");
            printf("address multi line\n");
            printf("sdffsdfvfegfbn,\n");
            printf("grgwggsrsgv\n");
            printf("gfrg\n");
            printf("fs\n");
            break;

        case 3:
            printf("Addition of 2 number without scanf is 45 + 24 = %d\n", 45 + 24);
            printf("addition using scanf is : %d\n", num1 + num2);
            break;

         case 4:
            printf("without scanf %f", (1+2+3)/3);
            printf("with scanf %f\n", (num1+num2+num3)/3);
            break;
        case 5:
            printf("Area of circle is : %f", 3.14*num1*num1);
            break;

        default:
            break;
        }
    }
    else if (group == 'b' || group == 'B')
    {
        
    }
    else{
        printf("Dude there are only 2 Groups A and B\n");
    }
    
}