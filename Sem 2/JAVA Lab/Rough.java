package vsJAVA;

import java.util.Scanner;

public class Rough {
    static void fib(int n){
        int oldterm = 1, newterm = 1, fibo;
        System.out.println(oldterm);
        System.out.println(newterm);
        for (int i = 3; i <=n; i++){
            fibo = oldterm + newterm;
            System.out.println(fibo);
            oldterm = newterm;
            newterm = fibo;
        }
    }
    public static void main(String[] args){
        int n;
        Scanner fiboo = new Scanner(System.in);

        System.out.println("Enter num : ");
        n = fiboo.nextInt();

        fib(n);
    }
}
