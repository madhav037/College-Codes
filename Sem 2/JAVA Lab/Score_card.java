package vsJAVA;

import java.util.Scanner;

public class Score_card {
    public static void  main(String[] args){
        int innings, over;
        int inningNum, overNum,ballNum;

        Scanner scoreCard = new Scanner(System.in);

        System.out.print("Enter Total Number of Innings : ");
        innings = scoreCard.nextInt();

        System.out.print("Enter total number of overs : ");
        over = scoreCard.nextInt();

        int[][][] arr = new int[innings][over][7];

        for (int i=0; i < innings; i++){
            System.out.print("Enter Runs for inning " + i);
            System.out.println(" ");
            for (int j=0; j < over; j++){
                System.out.print("Enter Run for over " + j);
                System.out.println(" ");
                for (int k=1; k <= 6; k++){
                    System.out.print("Enter for ball- "+ k + " :");
                    arr[i][j][k] = scoreCard.nextInt();
//                    System.out.println(" ");
                }
            }
        }

        System.out.print("Enter the Inning no. : ");
        inningNum = scoreCard.nextInt();
        System.out.print("Enter Over number : ");
        overNum = scoreCard.nextInt();
        System.out.print("Enter Ball num : ");
        ballNum = scoreCard.nextInt();

        System.out.print("The Run on inning : " + inningNum + " over : " + overNum + " is : " + arr[inningNum][overNum][ballNum]);

    }
}
