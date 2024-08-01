//WAP to read marks of five subjects. Calculate percentage and print class accordingly. Fail below 35, Pass Class between 35 to 45, Second Class between 45 to 60, First Class between 60 to 70, Distinction if more than 70.
package vsJAVA;
import java.util.*;

public class Lab2_7 {
    public static void main(String[] args){
        int s1, s2, s3, s4, s5;
        float percent=0;
        Scanner var1 = new Scanner(System.in);

        System.out.print("Enter marks of s1 : ");
        s1 = var1.nextInt();
        System.out.print("Enter marks of s2 : ");
        s2 = var1.nextInt();
        System.out.print("Enter marks of s3 : ");
        s3 = var1.nextInt();
        System.out.print("Enter marks of s4 : ");
        s4 = var1.nextInt();
        System.out.print("Enter marks of s5 : ");
        s5 = var1.nextInt();

        percent = (s1+s2+s3+s4+s5) / 5.0f;

        if (percent < 35){
            System.out.println(percent + "% Fail");
        }
        else if (percent >= 35 && percent <= 45) {
            System.out.print(percent + "% Pass Class");
        }
        else if (percent > 45 && percent <= 60){
            System.out.print(percent + "% Second Class");
        }
        else if (percent > 60 && percent <= 70){
            System.out.print(percent + "% First Class");
        }
        else if (percent > 70){
            System.out.print(percent + "% Distinction");
        }

    }
}
