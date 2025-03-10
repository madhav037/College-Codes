package vsJAVA;

import java.util.Scanner;

public class Lab2_6 {
    public static void main(String[] args){
        int a, b, c;
        System.out.print("Enter a : ");
        Scanner var1=new Scanner(System.in);

        a = var1.nextInt();
        System.out.print("Enter b : ");
        b = var1.nextInt();
        System.out.print("Enter c : ");
        c = var1.nextInt();

        if(a>b){
            if(a>c){
                System.out.print("a");
            }
            else{
                System.out.print("c");
            }
        }
        else{
            if(b>c){
                System.out.print("b");
            }
            else{
                System.out.print("c");
            }
        }
    }
}
