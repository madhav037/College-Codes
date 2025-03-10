//WAP to print numbers between two given numbers which is divisible by 2 but not divisible by 3
package vsJAVA;

import java.util.Scanner;

public class Lab3_4 {
    public static void main(String[] args) {
        int range_s, range_f;

        Scanner num = new Scanner(System.in);

        System.out.print("Enter Range(start) : ");
        range_s = num.nextInt();
        System.out.print("Enter Range(end) : ");
        range_f = num.nextInt();

        System.out.print("The numbers are : ");
        for (int i = range_s; i <= range_f; i++){
            if (i % 2 == 0 && i % 3 != 0){
                System.out.print(i + "  ");
            }
        }
    }
}
