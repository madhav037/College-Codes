package vsJAVA;

import java.util.Scanner;

public class attendence {
    public static void main(String[] args) {
        int begin, end, total=1000, check, n=0, newn=0;
        boolean condition = true;
        Scanner att = new Scanner(System.in);

        int[] attend = new int[total];

        System.out.print("Enter starting roll no. : ");
        begin = att.nextInt();

        System.out.print("Enter last roll no. : ");
        end = att.nextInt();

        System.out.println("Enter 0 for absent and 1 for present ");
        for (int i=begin; i<=end; i++){
            System.out.println(i);
            while(condition) {
                check = att.nextInt();
                if (check == 1){
                    break;
                } else if (check == 0) {
                    attend[n] = i;
                    n++;
                    break;
                }
                else {
                    System.out.print("Please enter correct number : ");
                }
            }
        }

        for (int i=0; i < n; i++){
            System.out.println("Absent are : " + attend[i]);
        }

        boolean condi1 = true, condi2 = true;
        int Oorl1, Oorl2;
        int number, number2;
        int check1 = 1, check2 = 1;
        while(condi1){
            System.out.print("Do you want to make change in absent list(Press 1 for yes, 0 for no) : ");
            Oorl1 = att.nextInt();
            if (Oorl1 == 1){
                while(condi2) {
                    System.out.print("Press 1 to add absent 0 to remove absent number (-1 to exit): ");
                    Oorl2 = att.nextInt();
                    if (Oorl2 == 1){
                        System.out.print("Enter the number you want to add : ");
                        number = att.nextInt();
                        if (number >= begin && number <= end){
                            for (int i =0; i < n; i++){
                                if (attend[i] == number){
                                    System.out.println("Number is already present in the list");
                                    check1 = 0;
                                }
                                else{
                                    check1 = 1;
                                }
                            }
//                            if (check1 == 1){
//                                System.out.println("Number is already present in absent list");
//                                break;
//                            }
                        }
                        else{
                            System.out.println("Number is not present in list");
                        }
                        if (check1 == 1){
                            attend[n] = number;
                            n++;
                            System.out.println("Added!");
                            for (int i=0; i < n; i++){
                                System.out.println("Absent are : " + attend[i]);
                            }
                            break;
                        }
                    }
                    else if (Oorl2 == 0){
                        System.out.print("Enter the number you want to remove : ");
                        number2 = att.nextInt();
                        if (number2 >= begin && number2 <= end){
                            for (int i =0; i < n; i++){
                                if (attend[i] == number2){
                                    check2 = 0;
                                }
                            }
                        }
                        else{
                            System.out.println("Number is not present in list");
                        }
                        if (check2 == 1){
                            System.out.println("Number is not present in absent list");
                            break;
                        }
                        if (check2 == 0){
                            for (int i=0; i < n; i++){
                                if (attend[i] == number2){
                                    for (int j=i; j < n; j++) {
                                        attend[j] = attend[j + 1];
                                    }
                                    newn = n - 2;
                                    System.out.println("Removed!");
                                    for (int j=0; j < n-1; j++){
                                        System.out.println("Absent are : " + attend[j]);
                                    }
                                    break;
                                }

                            }
                        }
                    } else if (Oorl2 == -1) {
                        break;
                    } else{
                        System.out.println("Enter valid choice");
                    }
                }
            }
            else if (Oorl1 == 0) {
                System.out.println("ok");
                break;
            }
            else{
                System.out.println("Enter valid choice");
            }

        }

        for (int i=0; i < n-1; i++){
            System.out.println("Absent are : " + attend[i]);
        }

    }
}
