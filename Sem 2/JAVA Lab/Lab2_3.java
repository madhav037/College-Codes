package vsJAVA;

import java.util.*;

public class Lab2_3 {
    public static void main(String[] args){
        double area, radius=0;
        System.out.print("Enter area of circle");
        Scanner var1=new Scanner(System.in);

        area = var1.nextDouble();

        radius = Math.sqrt(area / 3.14);
        System.out.print("area = " + 2 * radius);
    }
}
