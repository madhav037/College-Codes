package vsJAVA;

import java.util.Scanner;

class Cricle{
    private static final float pie = 3.14f;
    float radius;

        void area(){
            Scanner sc = new Scanner(System.in);
            radius = sc.nextFloat();
            System.out.println("Area is :" + (pie * radius * radius));
        }

        void perimeter(){
            Scanner sc = new Scanner(System.in);
            radius = sc.nextFloat();
            System.out.println("Perimeter : " + (2 * pie * radius));
        }
}

public class Lab6_6 {
    public static void main(String[] args){
        Cricle cr1 = new Cricle();
        cr1.area();
        cr1.perimeter();
    }
}
