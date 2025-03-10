package vsJAVA;

import java.util.Scanner;

public class extra {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
//
//        int n, sum=0;
//        n = sc.nextInt();
//
//        int[] arr = new int[n];
//
//        for (int i = 0; i < n; i++){
//            System.out.print("Enter your number : ");
//            arr[i] = sc.nextInt();
//            sum = sum + arr[i];
//        }
//
//        System.out.print("Sum is : " + sum);


        int n, on=0, en=0;
        n = sc.nextInt();

        int[] arr = new int[n];
        int[] odd = new int[n];
        int[] even = new int[n];

        for (int i = 0; i < n; i++){
            System.out.print("Enter your number : ");
            arr[i] = sc.nextInt();
            if (arr[i] % 2 == 0){
                even[en] = arr[i];
                en++;
            }
            else{
                odd[on] = arr[i];
                on++;
            }
        }

        System.out.println("even are : ");
        for (int i = 0; i <=en; i++){
            System.out.println("even are : " + even[i]);
        }

        System.out.println("odd are : ");
        for (int i = 0; i <=on; i++){
            System.out.println("Odd are : " + odd[i]);
        }
    }
}
