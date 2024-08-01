import java.util.Scanner;

public class test {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Nodes newnode = new Nodes();
        int n = 0;
        boolean a = true;
        while (a) {
            n = sc.nextInt();
            if (n == -1) {
                a = false;
                break;
            } else {
                newnode.addNode(n);
            }
        }
        newnode.display();
        sc.close();
    }
}

class Nodes {
    class Node {
        int info;
        Node next;

        public Node(int info) {
            this.info = info;
            this.next = null;
        }
    }

    public Node head = null;
    public Node tail = null;

    public void addNode(int info) {
        Node n1 = new Node(info);
        if (head == null) {
            head = n1;
            tail = n1;
        } else {
            tail.next = n1;
            tail = n1;
        }
    }

    public void display() {
        Node current = head;
        if (head == null) {
            System.out.println("List is empty");
            return;
        }
        System.out.println("Nodes of singly linked list: ");
        while (current != null) {
            System.out.print(current.info + " ");
            current = current.next;
            System.out.println(current);
        }
        System.out.println();
    }
}
