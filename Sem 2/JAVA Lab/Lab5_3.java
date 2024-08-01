//WAP to accept n numbers in an array. Now, enter a number and search whether the number is present or not in the list of array elements by using linear search.
package vsJAVA;

import java.util.Scanner;

public class Lab5_3 {
    public static void main(String[] args){
        int n, count=0;

        Scanner num = new Scanner(System.in);

        System.out.print("Enter n : ");
        n = num.nextInt();


        int[] arr = new int[n];
        int search, countt=0;

        for (int i=0; i < n; i++) {
            System.out.print("Enter num : ");
            arr[i] = num.nextInt();
        }

        System.out.print("Enter the number you want to search : ");
        search = num.nextInt();

        for (int i=0; i < n; i++){
            if (arr[i] == search){
                System.out.println("Yes, it is present at index " + i);
                countt++;
                count = 1;
            }
        }
        if (count == 0){
            System.out.println("It isn't present in the array");
        }
        else{
            System.out.println("it is present " + countt + " times");
        }
    }
}
