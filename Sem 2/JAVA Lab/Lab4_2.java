//WAP to find maximum number from given two numbers using method.
package vsJAVA;

import java.util.Scanner;

public class Lab4_2 {

    static int largeOfTwo(int a, int b){
        if (a > b){
            return a;
        }
        else {
            return b;
        }
    }

    public static void main(String[] args){
        int a,b,max;

        Scanner maxOfTwo = new Scanner(System.in);

        System.out.print("Enter num1 : ");
        a = maxOfTwo.nextInt();
        System.out.print("Enter num2 : ");
        b = maxOfTwo.nextInt();

        max = largeOfTwo(a, b);

        System.out.print("Largest is : " + max);
    }
}
