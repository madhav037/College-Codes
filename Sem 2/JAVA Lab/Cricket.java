package vsJAVA;

import java.util.Scanner;

public class Cricket {
    public static void main(String[] args){
        int  over=1, run, max = 6, min = -2, balls=0;
        int score = 0, yrscore=0, oppscore=0;
        int Colling;
        Scanner cricket = new Scanner(System.in);

        System.out.println("This is a 5 over match");
        System.out.println("1,2,3,4,5,6 for runs, -1,-2,0 for no ball, wide, miss");

        for (int i=0; i <= 1; i++){
            System.out.println("INNING : " + (i+1));
            if (i == 0){
                System.out.println("You are batting");
                for (int j=0; j < 18; j++){
                    if (over == 4 || j == 17) {
                        System.out.println("Match over!");
                        System.out.println("Your runs are : " + score);
                        System.out.println(" ");
                        yrscore = score;
                        break;
                    }
                    System.out.print("Enter your move : ");
                    run = cricket.nextInt();
                    Colling = (int) (Math.random() * (max - min + 1) + min);

                    if (run == Colling) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("You are out !");
                        System.out.println("Your Score is " + score);
                        System.out.println(" ");
                        yrscore = score;
                        break;
                    } else if (Colling == -1) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("No Ball!.....1 run awarded");
                        score++;
                    } else if (Colling == -2) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("Wide!.....1 run awarded");
                        score++;
                    } else if (Colling == 0) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("You missed the shot !");
                    } else if (run == 1) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("You Scored 1 run!");
                        score++;
                    } else if (run == 2) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("You Scored 2 runs!!");
                        score+=2;
                    } else if (run == 3) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("You Scored 3 runs!!!");
                        score+=3;
                    } else if (run == 4) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("FOUR!!!!");
                        score+=4;
                    } else if (run == 5) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("You Scored 5 runs!!!!!");
                        score+=5;
                    } else if (run == 6) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("SIX!!!!!!");
                        score+=6;
                    }
                    balls++;
                    if (balls == 6){
                        over++;
                        System.out.println("This is over : " + over);
                        balls = 0;
                    }
                }
            }
            else {
                score = 0;
                balls = 0;
                over = 1;
                //loop = true;
                System.out.println("You are Balling");
                for (int j=0; j < 18; j++){
                    if (over == 4 || j == 17) {
                        System.out.println("Match over!");
                        System.out.println("opponent's runs are : " + score);
                        System.out.println(" ");
                        oppscore = score;
                        break;
                    }
                    System.out.print("Enter your move : ");
                    run = cricket.nextInt();
                    Colling = (int) (Math.random() * (max - min + 1) + min);

                    if (run == Colling) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("Opponent is out !");
                        System.out.println("Opponent's Score is " + score);
                        System.out.println(" ");
                        oppscore = score;
                        break;
                    } else if (run == -1) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("No Ball!.....1 run awarded");
                        score++;
                    } else if (run == -2) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("Wide!.....1 run awarded");
                        score++;
                    } else if (run == 0) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("Opponent missed the shot !");
                    } else if (Colling == 1) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("Opponent Scored 1 run!");
                        score++;
                    } else if (Colling == 2) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("Opponent Scored 2 runs!!");
                        score+=2;
                    } else if (Colling == 3) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("Opponent Scored 3 runs!!!");
                        score+=3;
                    } else if (Colling == 4) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("FOUR!!!!");
                        score+=4;
                    } else if (Colling == 5) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("Opponent Scored 5 runs!!!!!");
                        score+=5;
                    } else if (Colling == 6) {
                        System.out.println("Opponent's move : "+ Colling);
                        System.out.println("SIX!!!!!!");
                        score+=6;
                    }
                    balls++;
                    if (balls == 6){
                        over++;
                        System.out.println("This is over : " + over);
                        balls = 0;
                    }
                }
            }
        }
        if (yrscore > oppscore){
            System.out.println("\nYour Score = " + yrscore);
            System.out.println("Opponent's Score = " + oppscore);
            System.out.println("You Win!!!");
        }
        else {
            System.out.println("\nYour Score = " + yrscore);
            System.out.println("Opponent's Score = " + oppscore);
            System.out.println("Opponent Wins!!!");
        }
    }
}