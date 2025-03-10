import java.util.Scanner;

public class A45 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num = sc.nextInt();
        node n = new node(num);
        System.out.println(n.info);
    }
}

class node {
    int info;
    node link;
    node(int info) {
        this.info = info;
        this.link = null;
    }
}
