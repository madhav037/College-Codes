package vsJAVA;


import java.util.Scanner;

class Time{
    int hour;
    int minute;

    Time(){
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Hour : ");
        hour = sc.nextInt();
        System.out.print("Enter Minute : ");
        minute = sc.nextInt();
        while(true) {
            if (minute > 60) {
                hour++;
                minute = minute - 60;
            }
            else{
                break;
            }
        }
        System.out.println(hour + " : " + minute);
    }
    void addition(){
        int hour1;
        int minute1;
        int finalHour, finalMinute;
        Scanner sc1 = new Scanner(System.in);
        System.out.print("Enter Hour : ");
        hour1 = sc1.nextInt();
        System.out.print("Enter Minute : ");
        minute1 = sc1.nextInt();
        while(true) {
            if (minute1 > 60) {
                hour1++;
                minute1 = minute1 - 60;
            }
            else{
                break;
            }
        }
        System.out.println(+ hour1 + " : " + minute1);

        finalHour = hour + hour1;
        finalMinute = minute + minute1;

        while(true) {
            if (finalMinute > 60) {
                finalHour++;
                finalMinute = finalMinute - 60;
            }
            else{
                break;
            }
        }
        System.out.println(finalHour + " : " + finalMinute);




    }
}
public class Lab6_7 {
    public static void main(String[] args){
        Time t = new Time();
        t.addition();
    }
}
