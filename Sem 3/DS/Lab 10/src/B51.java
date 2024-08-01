import java.util.Scanner;

public class B51 {
    public static void main(String[] args) {
        LinkedListt L = new LinkedListt();
        L.enqueue(45);
        L.enqueue(55);
        L.enqueue(65);
        L.enqueue(75);
        L.dqueue();
        L.display();
    }
}

class LinkedListt {
    static Node head = null;

    static class Node {
        int info;
        Node link;

        Node (int info) {
            this.info = info;
            this.link = null;
        }
    }
    public void dqueue() {
        if (head == null) {
            System.out.println("List empty");
        }else {
            head = head.link;
            System.out.println("node deleted");
        }
    }

    void enqueue(int data) {
        Node newNode = new Node(data);
        if (head == null) {
            head = newNode;
            System.out.println("inserted at end");
        }else {
            Node temp = head;
            while (temp.link != null) {
                temp = temp.link;
            }
            temp.link = newNode;
            System.out.println("Node inserted at end");
        }
    }

    public void display() {
        LinkedListt.Node temp;
        temp = head;
        while(temp != null) {
            System.out.println(temp.info);
            temp = temp.link;
        }
    }
}
