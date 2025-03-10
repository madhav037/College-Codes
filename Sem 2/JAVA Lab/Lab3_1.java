package vsJAVA;

import java.util.Scanner;

public class Lab3_1 {
    public static void main(String[] args){
        char n;
        float num1, num2, ans=0;

        Scanner Calc = new Scanner(System.in);

        System.out.print("Enter num 1 : ");
        num1 = Calc.nextFloat();
        System.out.print("Enter num 2 : ");
        num2 = Calc.nextFloat();

        System.out.print("Enter the operation : ");
        n = Calc.next().charAt(0);
        int temp = (int) n;

        switch (temp) {            //This is enhanced Switch function
            case 43 -> {
                ans = num1 + num2;
                System.out.println("Sum is " + ans);
            }
            case 45 -> {
                ans = num1 - num2;
                System.out.println("Sum is " + ans);
            }
            case 42 -> {
                ans = num1 * num2;
                System.out.println("Sum is " + ans);
            }
            case 47 -> {
                ans = num1 / num2;
                System.out.println("Sum is " + ans);
            }
            default -> {
            }
        }

    }
}
