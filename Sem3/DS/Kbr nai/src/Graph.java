import java.util.Scanner;

public class Graph {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of nodes : ");
        int nodes = sc.nextInt();
        System.out.print("Enter number of edges : ");
        int edges = sc.nextInt();

        int [][] matrix = new int[nodes][nodes];

        for (int i = 0; i < edges; i++) {
            System.out.print("Enter 1st node : ");
            int u = sc.nextInt();
            System.out.print("Enter 2nd node : ");
            int v = sc.nextInt();

            boolean isDirected = false;
            System.out.print("is directed ?(true/false) : ");
            isDirected = sc.nextBoolean();
            if (isDirected) {
                matrix[u - 1][v - 1] = 1;
            }else {
                matrix[u - 1][v - 1] = matrix[v - 1][u - 1] = 1;
            }
        }

        for (int i = 0; i < edges; i++) {
            for (int j  = 0; j < edges; j++) {
                System.out.print(matrix[i][j] + " ");
            }
            System.out.println();
        }
    }
}
