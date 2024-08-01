public class B53 {
    public static void main(String[] args) {

    }
}

class CLinkList {
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
        if (head != null) {
            newNode.link = head;
        }
        head = newNode;

        Node temp;
        temp = head;
        while(temp.link != null) {
            temp = temp.link;
        }
        temp.link = head;
        System.out.println("inserted at First");
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
            head = newNode;
            temp.link = head;
            System.out.println("Node inserted at end");
        }
    }

    void DeleteFromPosition(int position) {
        Node temp;
        Node pred = null;
        temp = head;
        int current = 0;
        while (temp.link != null && current < position) {
            pred = temp;
            temp = temp.link;
            current++;
            if (temp.link == null) {
                System.out.println("Node isn't here");
                return;
            }
        }
        pred.link = temp.link;
    }
}
