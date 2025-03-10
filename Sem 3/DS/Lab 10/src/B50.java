import java.util.Scanner;

public class B50 {
    public static void main(String[] args) {
        LinkedList L = new LinkedList();
        L.push(45);
        L.push(55);
        L.push(65);
        L.push(75);
        L.pop();
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
    public void push(int info) {
        Node newNode = new Node(info);
        if (head == null) {
            head = newNode;
            System.out.println("inserted");
        }else {
            Node temp = head;
            while (temp.link != null) {
                temp = temp.link;
            }
            temp.link = newNode;
            System.out.println("inserted");
        }
    }

    public void display() {
        Node temp;
        temp = head;
        while(temp != null) {
            System.out.println(temp.info);
            temp = temp.link;
        }
    }

    void pop() {
        if (head == null) {
            System.out.println("list empty");
            return;
        }
        if (head.link == null) {
            head = null;
            System.out.println("deleted");
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