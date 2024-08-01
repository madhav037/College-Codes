public class DemoInheritance{

    public static void main(String[] args) {
        Car c = new Car();
        c.start();        
    }

}

class Vehicle{
    int noOfPassenger;
    void start(){
        System.out.println("46");
    }
    void end(){
        System.out.println("edf");
    }
}

class Car extends Vehicle{
    int noOfAirbags;
}