#include<stdio.h>

int main() {
    int rows, cols;
    printf("Enter rows : ");
    scanf("%d", &rows);
    printf("Enter cols : ");
    scanf("%d", &cols);

    int arr[rows][cols], arr2[rows][cols], multi[rows][cols], sum[rows][cols];
    printf("For matrix 1\n");
    for (int i = 1; i <= rows; i++){
        for (int j = 1; j <= cols; j++){
            printf("Enter row-%d column-%d :", i, j);
            scanf("%d", &arr[i][j]);
        }
    }

    printf("For matrix 2\n");
   for (int i = 1; i <= rows; i++){
       for (int j = 1; j <= cols; j++){
           printf("Enter row-%d column-%d :", i, j);
           scanf("%d", &arr2[i][j]);
       }
    }

    for (int i = 1; i <= rows; i++){
        for (int j = 1; j <= cols; j++){
            sum[i][j]= 0;
            for (int k = 1; k <= rows; k++){
                sum[i][j] += arr[i][k] * arr2[k][j];
            }
        }
    }

    for (int i = 1; i <= rows; i++) {
        for (int j = 1; j <= cols; j++) {
            printf("%d ", sum[i][j]);
        }
        printf("\n");
    }    
}