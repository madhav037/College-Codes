//Three sides of a triangle are entered through the keyboard. WAP to check whether the triangle is isosceles, equilateral, scalene or right-angled triangle.
package vsJAVA;

import java.util.Scanner;

public class Lab3_2 {
    public static void main(String[] args){
        int side1, side2, side3;

        Scanner triangle = new Scanner(System.in);

        System.out.print("Enter side of triangle : ");
        side1 = triangle.nextInt();
        System.out.print("Enter side of triangle : ");
        side2 = triangle.nextInt();
        System.out.print("Enter side of triangle : ");
        side3 = triangle.nextInt();

        if (side2 == side3 && side1 == side3){
            System.out.print("Equilateral");
        }
        else if (side1 == side2 || side1 == side3 || side2 == side3){
            System.out.print("Isosceles");
        }
        else if ( (side1 * side1) + (side2 * side2) == (side3 * side3) || (side3 * side3) + (side2 * side2) == (side1 * side1) || (side1 * side1) + (side3 * side3) == (side2 * side2) ){
            System.out.print("Right angled triangle");
        }
        else {
            System.out.print("Scalar");
        }
    }
}
