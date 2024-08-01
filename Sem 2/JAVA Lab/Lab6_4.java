package vsJAVA;

import java.util.Scanner;

class Employee{
    int employeeId;
    String employeeName;
    String designation;
    int age;
    int salary;

    void getEmployeeDetails(){
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Employee id : ");
        employeeId = sc.nextInt();
        System.out.print("Enter employee name : ");
        employeeName = sc.next();
        System.out.print("Enter designation : ");
        designation = sc.next();
        System.out.print("Enter Age : ");
        age = sc.nextInt();
        System.out.print("Enter salary : ");
        salary = sc.nextInt();
    }

    void displayEmployeeDetails(){
        System.out.println("Employee id  = " + employeeId);
        System.out.println("Employee name  = " + employeeName);
        System.out.println("designation = " + designation);
        System.out.println("age  = " + age);
        System.out.println("salary  = " + salary);
    }

}


public class Lab6_4 {
    public static void main(String[] args){
        Employee emp1 = new Employee();
        emp1.getEmployeeDetails();
        emp1.displayEmployeeDetails();

    }
}
