import java.util.Scanner;

public class B47 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int info = sc.nextInt();
        LinkedList L = new LinkedList();
        L.insertFront(45);
        L.insertEnd(55);
        L.insertFront(65);
        L.insertEnd(75);
        L.deleteEnd();
        L.deleteFront();
        L.display();
    }
}
class LinkedList {
     static Node head = null;

    static class Node {
        int info;
        Node link;

        Node (int info) {
            this.info = info;
            this.link = null;
        }
    }
    public void insertFront(int info) {
        Node newNode = new Node(info);
        if (head == null) {
            head = newNode;
        }else {
            newNode.link = head;
            head = newNode;
        }
        System.out.println("inserted at First");
    }

    public void display() {
        Node temp;
        temp = head;
        while(temp != null) {
            System.out.println(temp.info);
            temp = temp.link;
        }
    }

    public void deleteFront() {
        if (head == null) {
            System.out.println("List empty");
        }else {
            head = head.link;
            System.out.println("node deleted");
        }
    }

    void insertEnd(int data) {
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

    void deleteEnd() {
        if (head == null) {
            System.out.println("list empty");
            return;
        }
        if (head.link == null) {
            head = null;
            System.out.println("list node deleted");
            return;
        }

        Node temp = head;
        while (temp.link.link != null) {
            temp = temp.link;
        }
        temp.link = null;
        System.out.println("deleted end");
    }

}