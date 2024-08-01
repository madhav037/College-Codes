package vsJAVA;

import java.util.Scanner;

class Room{
    double length;
    double width;
    int window;

    Room(double length, double width, int window){
        this.length = length;
        this.width = width;
        this.window = window;
    }

    double area(){
        return length * width;
    }

    void display() {
        System.out.println("length = " + this.length);
        System.out.println("width = " + this.width);
        System.out.println("window = " + this.window);
        System.out.println("area = " + area() );
        System.out.println("");
    }

}

class Classroom extends Room {
    int benches, seats, lights, fans;
    Classroom(double length, double width, int window, int benches, int seats, int lights, int fans) {
        super(length,width,window);
        this.benches = benches;
        this.seats = seats;
        this.lights = lights;
        this.fans = fans;
    }

    void display() {
        super.display();
        System.out.println("No of benches = " + benches);
        System.out.println("No of seats = " + seats);
        System.out.println("No of lights = " + lights);
        System.out.println("No of fans = " + fans);
        System.out.println("No of seats = " + getSeats());
        System.out.println("");
    }

    int getSeats(){
        return benches * seats;
    }
}

public class Lab8_1 {
    public static void main(String[] args) {
        double length, width;
        int window;
        int benches, seats, lights, fans;

        Scanner sc = new Scanner(System.in);
        System.out.print("Enter length of room : ");
        length = sc.nextDouble();
        System.out.print("Enter width of room : ");
        width = sc.nextDouble();
        System.out.print("Enter no of windows in room : ");
        window = sc.nextInt();

        Room R1 = new Room(length,width,window);

        System.out.println("");
        System.out.print("Enter benches : ");
        benches = sc.nextInt();
        System.out.print("Enter seats : ");
        seats = sc.nextInt();
        System.out.print("Enter lights : ");
        lights = sc.nextInt();
        System.out.print("Enter fans : ");
        fans = sc.nextInt();

        Classroom c2 = new Classroom(length,width,window,benches,seats,lights,fans);

        R1.display();
        c2.display();
    }
}