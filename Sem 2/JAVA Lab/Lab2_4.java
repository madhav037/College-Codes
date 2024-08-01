package vsJAVA;

import java.util.Scanner;

public class Lab2_4 {
    public static void main(String[] args){
        int num;
        System.out.print("Enter number : ");
        Scanner var1=new Scanner(System.in);
        num = var1.nextInt();

        if(num > 0){
            System.out.print("Positive");
        }
        else{
            System.out.print("Negative");
        }
    }
}
