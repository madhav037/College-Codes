import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class BFS {

    static Map<Integer, Boolean> visited = new HashMap<>();
    static Map<Integer, ArrayList<Integer>> graph = new HashMap<>();
    static void bfs(int start) {

    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter number of edges : ");
        int edges = sc.nextInt();

        for (int i = 0; i < edges; i++) {
            System.out.print("Enter 1st node : ");
            int u = sc.nextInt();
            System.out.print("Enter 2nd node : ");
            int v = sc.nextInt();

            boolean isDirected = false;
            System.out.print("is directed ?(true/false) : ");
            isDirected = sc.nextBoolean();
            if (!graph.containsKey(u)) {
                graph.put(u,new ArrayList<>());
            }
            if (isDirected) {
                graph.get(u).add(v);
            }else {
                graph.get(u).add(v);
                if (!graph.containsKey(v)) {
                    graph.put(v, new ArrayList<>());
                }
                graph.get(v).add(u);
            }
        }
        System.out.print("Enter root node : ");
        int n = sc.nextInt();
        bfs(n);

    }
}
