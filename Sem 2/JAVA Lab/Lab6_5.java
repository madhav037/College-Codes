package vsJAVA;

import java.util.Scanner;

class Studentt{
    int EndrollNo;
    String Name;
    float CPI;
    float SPI;

    void getStudentDetails(){
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Endrollment no. : ");
        EndrollNo = sc.nextInt();
        System.out.print("Enter name : ");
        Name = sc.next();
        System.out.print("Enter CPI : ");
        CPI = sc.nextFloat();
        System.out.print("Enter SPI : ");
        SPI = sc.nextFloat();
    }

    void displayStudentDetails(){
        System.out.println("Endrollment no = " + EndrollNo);
        System.out.println("name  = " + Name);
        System.out.println("CPI  = " + CPI);
        System.out.println("SPI  = " + SPI);
    }

}


public class Lab6_5 {
    public static void main(String[] args){
        Studentt stu1 = new Studentt();
        stu1.getStudentDetails();
        stu1.displayStudentDetails();

    }
}
