//WAP to find factorial of the given number.
package vsJAVA;

import java.util.Scanner;

public class Lab3_5 {
    public static void main(String[] args) {
        int fact=1, num;

        Scanner factorial = new Scanner(System.in);

        System.out.print("Enter Number : ");
        num = factorial.nextInt();

        for (int i = 1; i <= num; i++){
            fact = fact * i;
        }

        System.out.print("Factorial of " + num + " is " + fact);
    }
}
