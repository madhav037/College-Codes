//WAP that calculates area of circle, triangle and square using method overloading.
package vsJAVA;

import java.util.Scanner;

public class Lab4_5 {

    static float methodArea(){   //for area of circle
        float radius;
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Radius of Circle : ");
        radius = sc.nextFloat();
        return radius * radius * 3.14f;
    }
    static double methodArea(float num, float num2, float num3){        //for area of triangle
        float s = ((num+num2+num3)/2);
        double ans = Math.sqrt(s*(s-num)*(s-num2)*(s-num3));
        return ans;
    }
    static float methodArea(float num){        //for area of square
        return num * num;
    }

    public static void main(String [] args) {
        float num, num2, num3;

        Scanner overloading = new Scanner(System.in);


        System.out.print("Enter number : ");
        num = overloading.nextFloat();
        System.out.print("Enter number : ");
        num2 = overloading.nextFloat();
        System.out.print("Enter number : ");
        num3 = overloading.nextFloat();


        System.out.println("Area of Circle is : " + methodArea());
        System.out.println("Area of Trianlge is : "+ methodArea(num,num2,num3));
        System.out.println("Area of Square is : " + methodArea(num));

    }
}
