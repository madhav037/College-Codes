import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Graph_2 {
    public static void main(String[] args) {
        Map<Integer, ArrayList<Integer>> graph = new HashMap<>();
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter number of nodes : ");
        int nodes = sc.nextInt();
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
        System.out.println(graph);

        for (Map.Entry<Integer, ArrayList<Integer>> entry : graph.entrySet() ) {
            System.out.print(entry.getKey() + " -> ");
            for ( Integer neighbour : entry.getValue() ) {
                System.out.print(neighbour + ", ");
            }
            System.out.println();
        }
    }
}
