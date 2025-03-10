//WAP to find whether the given number is prime or not without using function
package vsJAVA;

import java.util.Scanner;

public class Lab3_6 {
    public static void main(String[] args) {
        int num, count=0;

        Scanner primeNum = new Scanner(System.in);

        System.out.print("Enter number : ");
        num = primeNum.nextInt();

        for (int i=1; i <= num/2; i++) {
            if (num % i == 0){
                count++;
            }
        }
        if (count == 1)
            System.out.print("Prime");
        else
            System.out.print("Not Prime");
    }
}
