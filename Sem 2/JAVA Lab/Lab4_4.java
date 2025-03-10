//WAP to accept a number and check whether the number is prime or not. Use method name check (int n). The method returns 1, if the number is prime otherwise, it returns 0.
package vsJAVA;

import java.util.Scanner;

public class Lab4_4 {

    static int prime(int n){
        int count=0;
        for (int i=1; i <= n/2; i++) {
            if (n % i == 0){
                count++;
            }
        }
        if (count == 1)
            return 1;
        else
            return 0;
    }

    public static void main(String[] args){
        int num;

        Scanner prime = new Scanner(System.in);

        System.out.print("Enter number : ");
        num = prime.nextInt();

        System.out.print(prime(num));

    }
}


