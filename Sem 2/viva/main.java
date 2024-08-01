import java.util.Scanner;

    class Student {
        String Enrollment_No;
        String Student_Name;
        int Semester;
        double CPI;
        double SPI;

        void getStudentDetails() {
            Scanner sc = new Scanner(System.in);
            System.out.print("Enter Endrollment no. : ");
            Enrollment_No = sc.next();

            System.out.print("Enter Student name : ");
            Student_Name = sc.next();

            System.out.print("Enter Semester : ");
            Semester = sc.nextInt();

            System.out.print("Enter CPI : ");
            CPI = sc.nextDouble();

            System.out.print("Enter SPI : ");
            SPI = sc.nextDouble();
        }

        void displayStudentDetails() {
            System.out.println("Endrollment no is " + Enrollment_No);
            System.out.println("Student name is "+ Student_Name);
            System.out.println("Semester is " + Semester);
            System.out.println("CPI is " + CPI);
            System.out.println("SPI is " + SPI);
        }
    }

public class main {
    public static void main(String[] args) {
        Scanner sc1 = new Scanner(System.in);
        int i;
        System.out.print("Enter number ");
        i = sc1.nextInt();
        Student[] studentObj = new Student[i];

        for (int j = 0; j < i; j++) {
            studentObj[j] = new Student();
            studentObj[j].getStudentDetails();
            studentObj[j].displayStudentDetails();
            System.out.println("");
        }
    }
}