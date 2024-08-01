//Write a method with following method header: public int gcd (int num1, int num2). Write a program that prompts the user to enter two integers and compute the gcd of two
//integers. [Note: The greatest common divisor (GCD) of two numbers is the largest number that divides them both.]
package vsJAVA;

import java.util.Scanner;

public class Lab4_6 {

    static  int gcd(int num1, int num2) {
        if (num1 > num2) {
            for (int i = num2; i > 0; i--) {
                if (num1 % i == 0 && num2 % i == 0) {
                    return i;
                }
            }
        } else {
            for (int i = num1; i > 0; i--) {
                if (num1 % i == 0 && num2 % i == 0) {
                    return i;
                }
            }
        }
        return 0;
    }

        public static void main (String[]args){
            int num1, num2;

            Scanner gcdd = new Scanner(System.in);

            System.out.print("Enter num1 : ");
            num1 = gcdd.nextInt();
            System.out.print("Enter num2 : ");
            num2 = gcdd.nextInt();

            System.out.print("gcd is " + gcd(num1,num2));
        }
}
