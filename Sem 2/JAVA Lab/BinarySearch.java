package vsJAVA;

import java.util.Scanner;

public class BinarySearch {
    public static void main(String[] args){
        int[] array = new int[99999999];//100000000
        for(int i = 1; i < 99999999; i++){
            array[i] = i;
        }
        int search;
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the number you want to search : ");
        search = sc.nextInt();
        sc.close();

        int low = 0;
        int high = array.length - 1;
        boolean isFound = false;

        while (high >= low){
            int mid = (low + high)/2;
            if (search < array[mid]){
                high = mid - 1;
            } else if (search == array[mid]) {
                System.out.println("Number found at : " + mid);
                isFound = true;
                break;
            }
            else{
                low = mid + 1;
            }
        }

        if (!isFound){
            System.out.println("Number does not exist in array");
        }
    }
}
