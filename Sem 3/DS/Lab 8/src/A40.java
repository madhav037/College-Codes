import java.util.Scanner;

public class A40{
    public static void main(String[] args) {
      Scanner sc = new Scanner(System.in);
      System.out.print("Enter size of Queue : ");
        int N = sc.nextInt();
        CircularQueue q = new CircularQueue(N);
        while(true) {
            System.out.print("Enter 1 to insert 2 to delete 3 to display -01 to leave : ");
            int num = sc.nextInt();
            if (num == -01) {

                break;
            }

            if (num == 1) {
                System.out.print("Enter number : ");
                int number = sc.nextInt();
                q.CQinsert(number);
            } else if (num == 2) {
                int temp = q.CQdelete();
                System.out.println("Element removed : " + temp);
            } else if (num == 3) {;
                q.display();
            }
        }
      sc.close();
    }
}

class CircularQueue {
    int F = -1;
    int R = -1;
    int N;
    int[] Q;
    CircularQueue(int N) {
        this.N = N;
        Q = new int[this.N];
    }

    void CQinsert(int Y) {
        if (R == N-1) {
            R = 0;
        }else {
//            R=(R+1)%N;
            R++;
        }

        if (F == R) {
            System.out.println("OverFlow");
        }else {
            Q[R] = Y;
        }

        if (F == -1) {
            F = 0;
        }
    }

    int CQdelete() {
        int Y = 0;
        if (F == -1) {
            System.out.println("UnderFlow");
            return 0;
        }else{
            Y = Q[F];
        }

        if (F == R) {
            F = R = -1;
            return Y;
        }

        if (F == N-1) {
            F = 0;
        }else{
//            F=(F+1)%N;
            F++;
        }
        return Y;
    }

    void display() {
        System.out.println("");
        for (int i = F; i != R; i=(i+1)%N) {
            System.out.println(Q[i]);
        }
        System.out.println(Q[R]);
    }}