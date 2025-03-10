package vsJAVA;

import java.util.Scanner;

public class Lab2_5 {
    public static void main(String[] args){
        char ch;
        System.out.print("Enter character :");
        Scanner var1=new Scanner(System.in);
        ch = var1.next().charAt(0);

        if(ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u' || ch == 'A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U'){
            System.out.print("Vowel");
        }
        else{
            System.out.print("Consounant");
        }
    }
}
