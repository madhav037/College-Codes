import java.util.Scanner;

public class A46 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num = sc.nextInt();
        Node n = new Node(num);
        System.out.println(n.info);
    }
}

class Node {
    int info;
    Node link;
    Node(int info) {
        this.info = info;
        this.link = null;
    }
}
