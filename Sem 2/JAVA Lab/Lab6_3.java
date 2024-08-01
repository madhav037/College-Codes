package vsJAVA;

import java.util.Scanner;

class Bank_account{
    int accountNo;
    String userName;
    String Email;
    String accountType;
    float accountBalance;

    void getAccountDetails(){
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter accountNo : ");
        accountNo = sc.nextInt();

        System.out.print("Enter userName : ");
        userName = sc.next();

        System.out.print("Enter Email : ");
        Email = sc.next();

        System.out.print("Enter accountType : ");
        accountType = sc.next();

        System.out.print("Enter accountBalance : ");
        accountBalance = sc.nextFloat();
    }

    void displayAccountDetails(){
        System.out.println("accountNo = " + accountNo);
        System.out.println("userName = " + userName);
        System.out.println("Email = " + Email);
        System.out.println("accountType = " + accountType);
        System.out.println("accountBalance = " + accountBalance);

    }

}

public class Lab6_3 {

        public static void main(String[] args){
            Bank_account bb = new Bank_account();
            bb.getAccountDetails();
            bb.displayAccountDetails();
        }
}
