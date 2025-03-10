public class DLinkList {
        static Node head = null;
        static class Node {
            int info;
            Node lptr;
            Node rptr;

            Node(int info) {
                this.info = info;
                this.lptr = null;
                this.rptr = null;
            }
        }

        public void insertFront(int info) {
            Node newNode = new Node(info);
            if (head == null) {
                head = newNode;
            }else {
                newNode.rptr = head;
                head.lptr = newNode;
                head = newNode;
            }
            System.out.println("inserted at First");
        }

        void insertEnd(int data) {
            Node newNode = new Node(data);
            if (head == null) {
                head = newNode;
                System.out.println("inserted at end");
            }else {
                Node temp = head;
                while (temp.rptr != null) {
                    temp = temp.rptr;
                }
                temp.rptr = newNode;
                newNode.lptr = temp;
                System.out.println("Node inserted at end");
            }
        }

        public void deleteFront() {
            if (head == null) {
                System.out.println("List empty");
            }else {
                head = head.rptr;
                head.lptr = null;
                System.out.println("node deleted");
            }
        }

        void deleteEnd() {
            if (head == null) {
                System.out.println("list empty");
                return;
            }
            if (head.rptr == null) {
                head = null;
                System.out.println("list node deleted");
                return;
            }

            Node temp = head;
            while (temp.rptr.rptr != null) {
                temp = temp.rptr;
            }
            temp.rptr = null;
            System.out.println("deleted end");
        }

        public void display() {
            Node temp;
            temp = head;
            while(temp != null) {
                System.out.println(temp.info);
                temp = temp.rptr;
            }
        }
}
