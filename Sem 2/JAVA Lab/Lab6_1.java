package vsJAVA;

import java.util.Scanner;

class Student{
    int endrollmentNo;
    String name;
    String gender;
    int marks;

    static int count;

        Student(){
            endrollmentNo = 220101011;
            name = "Madhav";
            gender = "Male";
            marks = 0;
        }

        Student(int endrollmentNo, String name, String gender, int marks){
            this.endrollmentNo = endrollmentNo;
            this.name = name;
            this.gender = gender;
            this.marks = marks;


        }
        void display(){
            System.out.println("Endrollment no. : " + endrollmentNo);
            System.out.println("Name : " + name);
            System.out.println("Gender : " + gender);
            System.out.println("Marks : " + marks);
        }
}

public class Lab6_1 {
    public static void main(String[] args){
        int endrollmentNo, marks;
        String name , gender;

        Scanner sc = new Scanner(System.in);

        Student s1 = new Student();
        s1.display();
        Student s2 = new Student(51513,"sdffsd","asad",25254);
        s2.display();

        System.out.print("Enter Endrollment no. : ");
        endrollmentNo = sc.nextInt();
        System.out.print("Enter Name : ");
        name = sc.next();
        System.out.print("Enter Gender : ");
        gender = sc.next();
        System.out.print("Enter marks : ");
        marks = sc.nextInt();

        Student s3 = new Student(endrollmentNo, name, gender, marks);
        s3.display();
    }
}
