//WAP that prompts the user to input number of calls and calculate the monthly telephone bills as per the following rule:
//Minimum Rs. 200 for up to 100 calls.
//Plus Rs. 0.60 per call for next 50 calls.
//Plus Rs. 0.50 per call for next 50 calls.
//Plus Rs. 0.40 per call for any call beyond 200 calls.
package vsJAVA;

import java.util.Scanner;

public class Lab3_3 {
    public static void main(String[] args){
        int num_of_calls;
        float bill=0.0f;

        Scanner TelephoneBill = new Scanner(System.in);

        System.out.print("Enter number of calls : ");
        num_of_calls = TelephoneBill.nextInt();

        if (num_of_calls <= 100) {
            bill = 200;
        }
        else if (num_of_calls <= 150) {
            bill = 200 + (num_of_calls - 100)*0.60f;
        }
        else if (num_of_calls <= 200) {
            bill = 200 + 50*0.60f +(num_of_calls - 150)*0.50f;
        }
        else {
            bill = 200 + 50*0.60f + 50*0.50f + (num_of_calls - 200)*0.40f;
        }

        System.out.print(bill);
    }
}
