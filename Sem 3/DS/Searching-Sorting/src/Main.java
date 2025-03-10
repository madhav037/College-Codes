import java.util.Scanner;

public class Main  extends  ArrayStuff{
    public static void main(String[] args) {
        ArrayStuff a = new ArrayStuff();
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter size of array : ");
        int n = sc.nextInt();
        int[] arr;
        arr = a.getArray(n);
        System.out.println(arr.length);
        System.out.print("Enter search element : ");
        int key = sc.nextInt();
        System.out.println("Linear Search : "+ a.linearSearch(arr,key));
        System.out.println("Binary Search : "+ a.binarySearch(arr,key));

        System.out.print("Bubble sort : ");
        a.BubbleSort(arr);
        System.out.println();
        System.out.print("insertion sort : ");
        a.insertionSort(arr);
        System.out.println();
        System.out.print("selection sort : ");
        a.selectionSort(arr);
    }
}