//WAP to count number of even or odd number from an array of n numbers.
package vsJAVA;

import java.util.Scanner;

public class Lab5_1 {
    public static void main(String[] args){
        int n, countEven=0, countOdd=0;

        Scanner num = new Scanner(System.in);

        System.out.print("Enter n : ");
        n = num.nextInt();

        int[] arr = new int[n];

        for (int i=0; i < n; i++) {
            System.out.print("Enter num : ");
            arr[i] = num.nextInt();
        }

        for (int i=0; i < n; i++) {
            if (arr[i] % 2 == 0)
                countEven++;
            else
                countOdd++;
        }

        System.out.print("Number of Odd are : " + countOdd + " and number of Even are : " + countEven);
    }
}

