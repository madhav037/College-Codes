package vsJAVA;

import java.util.Scanner;

public class Lab2_2 {
    public static void main(String[] args){
        float weight, height;
        System.out.print("Enter Weight : ");
        Scanner var1=new Scanner(System.in);//3.28
        weight = var1.nextFloat();

        System.out.print("Enter Height");
        height = var1.nextFloat();

        
        System.out.println((weight*0.4592)/(height*0.0254)*(height*0.0254));
    }
}