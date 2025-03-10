// WAP to sort an Array using Tree sort
#include <iostream>

using namespace std;

class Node {
public:
    int info;
    struct Node *left, *right;

    Node(int info) {
        this->info = info;
        left = nullptr;
        right = nullptr;
    }
};

class BST {
private:
    Node *root;

    Node *insertRecursive(Node *node, int value) {
        if (node == nullptr) {
            return new Node(value);
        }

        if (value < node->info) {
            node->left = insertRecursive(node->left, value);
        }
        else if (value > node->info) {
            node->right = insertRecursive(node->right, value);
        }

        return node;
    }

    void inorderRecursive(Node *node) {
        if (node != nullptr) {
            inorderRecursive(node->left);
            std::cout << node->info << " ";
            inorderRecursive(node->right);
        }
    }

public:
    BST() {
        root = nullptr;
    }

    void insert(int value) {
        root = insertRecursive(root, value);
    }

    void inorder() {
        inorderRecursive(root);
        std::cout << std::endl;
    }

    
};

int main()
{
    BST bst;
    
    while(1) {
        cout << "Enter element (-1 to exit) : ";
        int n;
        cin >> n;
        if (n == -1) break;
        bst.insert(n);
    }

    cout << "In-order traversal: ";
    bst.inorder();
}