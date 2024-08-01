//WAP to print given number in reverse order.
package vsJAVA;

import java.util.Scanner;

public class Lab3_7 {
    public static void main(String [] args){
        int num, digit, revint=0;

        Scanner rev = new Scanner(System.in);

        System.out.print("Enter number : ");
        num = rev.nextInt();

        while (num > 0){
            digit = num % 10;
            revint = revint * 10 + digit;
            num /=10;
        }
        num = revint;
        System.out.print("Reverse is = " + num);
    }
}
