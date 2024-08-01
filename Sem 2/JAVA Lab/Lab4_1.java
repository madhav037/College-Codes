//WAP to calculate simple interest using method.
package vsJAVA;

import java.util.Scanner;

public class Lab4_1 {

    static float simpleIntrest(float P, float R, float T){
        return (P*R*T)/100;
    }
    public static void main(String[] args){
        float P, R, T, SI;

        Scanner simpleIntrest = new Scanner(System.in);

        System.out.print("Enter Principle : ");
        P = simpleIntrest.nextFloat();
        System.out.print("Enter Rate of Interest : ");
        R = simpleIntrest.nextFloat();
        System.out.print("Enter Time period : ");
        T = simpleIntrest.nextFloat();

        SI = simpleIntrest(P,R,T);

        System.out.print("Simple intrest is : " + SI);
    }
}
