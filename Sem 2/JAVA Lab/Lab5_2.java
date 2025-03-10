//WAP to accept n numbers in an array. Display the sum of all the numbers which are divisible by either 3 or 5.
package vsJAVA;

import java.util.Scanner;

public class Lab5_2 {
    public static void main(String[] args) {
        int n, sum=0;

        Scanner num = new Scanner(System.in);

        System.out.print("Enter n : ");
        n = num.nextInt();

        int[] arr = new int[n];

        for (int i=0; i < n; i++) {
            System.out.print("Enter num : ");
            arr[i] = num.nextInt();
        }

        for (int i=0; i < n; i++) {
            if (arr[i] % 3 == 0 || arr[i] % 5 == 0)
                sum = sum + arr[i];
        }

        System.out.print("Sum is = " + sum);
    }
}
