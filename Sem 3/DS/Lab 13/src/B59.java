import java.util.Scanner;

public class B59 extends DLinkedList{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        BSTree tree = new BSTree();
        Node root = null;
        int num;
        boolean flag = false;
        while(true) {
            System.out.print("1-insert 2-delete \n3-preorder 4-postorder 5-inorder \n0-exit : ");
            int n = sc.nextInt();
            System.out.println("");
            switch (n) {
                case 1:
                    System.out.print("Enter number : ");
                    num = sc.nextInt();
                    root= tree.insertNode(root,num);
                    break;
                case 2:
                    System.out.print("Enter number : ");
                    num = sc.nextInt();
                    root = tree.deleteNode(root,num);
                    break;
                case 3:
                    System.out.println("PREORDER TRAVERSAL");
                    tree.preorderTraversal(root);
                    break;
                case 4:
                    System.out.println("POSTORDER TRAVERSAL");
                    tree.postorderTraversal(root);
                    break;
                case 5:
                    System.out.println("INORDER TRAVERSAL");
                    tree.inorderTraversal(root);
                    break;
                case 0: flag = true;
                    break;
                default:
                    System.out.println("Wrong number");
                    break;
            }
            if (flag) break;
        }
    }
}

class BSTree extends DLinkedList{

    public Node insertNode(Node root, int data) {
        if (root == null) {
            System.out.println("Node is inserted!");
            return root = new Node(data);
        }
        else{
            if(root.info > data) {
                root.lptr = insertNode(root.lptr,data);
            }else {
                root.rptr = insertNode(root.rptr,data);
            }
            return root;
        }
//        System.out.println("root is " + root.info);
    }

    public Node deleteNode(Node root, int deleteData) {
//        Node pred = root;
        if  (root == null) {
            System.out.println("Tree is empty");
            return null;
        }
        else if (deleteData > root.info) {
//            pred = root;

            deleteNode(root.rptr,deleteData);
        }
        else if (deleteData < root.info) {
//           pred = root;
            deleteNode(root.lptr,deleteData);
        }
        else{
            //        case 1
            if (root.lptr == null && root.rptr == null ){
                //System.out.println("data"+root.info);
                return null;
            }
//        case 2
            else  if (root.lptr == null) {
                System.out.println("data"+root.info);
                return root.rptr;
            }
            else if (root.rptr == null) {
                System.out.println("data"+root.info);
                return root.lptr;
            }
//        case 3
            Node n = inorderSuccessor(root.rptr);
            root.info = n.info;
            root.rptr = deleteNode(root.rptr,n.info);
        }
        return  root;

    }

    public void preorderTraversal(Node root) {
        if (root == null) {
            System.out.println("NULL");
            return;
        }else {
            System.out.println(root.info);
        }
        preorderTraversal(root.lptr);
        preorderTraversal(root.rptr);
//        System.out.println("PREORDER TRAVERSAL");
    }

    public void inorderTraversal(Node root) {
        if (root == null) {
            System.out.println("NULL");
            return;
        }
        inorderTraversal(root.lptr);
        System.out.println(root.info);
        inorderTraversal(root.rptr);
//        System.out.println("INORDER TRAVERSAL");
    }

    public void postorderTraversal(Node root) {
        if (root == null) {
            System.out.println("NULL");
            return;
        }
        postorderTraversal(root.lptr);
        postorderTraversal(root.rptr);
        System.out.println(root.info);
//        System.out.println("POSTORDER TRAVERSAL");
    }

    public  Node inorderSuccessor(Node root) {
        while (root.lptr != null) {
            root = root.lptr;
        }
        System.out.println("Root:"+root.info);
        return root;
    }

//    public Node delete_node(Node root, int value){
//        if (root.info > value) {
//            delete_node(root.lptr,value);
//        }else if (root.info < value) {
//            delete_node(root.rptr,value);
//        }
//        return root;
//    }
}