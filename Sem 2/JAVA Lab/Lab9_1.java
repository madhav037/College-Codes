package vsJAVA;

abstract class vegetable {
    String name;
    String color;
    int i;
}

class potato extends vegetable {
    potato (String name, String color) {
        this.name = name;
        this.color = color;
    }

    public String toString () {
        return "name is " + name + " color is " + color;
    }
 }

 class brinjal extends vegetable {
    brinjal (String name, String color) {
        this.name = name;
        this.color = color;
    }

    public String toString () {
        return "name is " + name + " color is " + color;
    }
 }

 class tomato extends vegetable {
    tomato (String name, String color) {
        this.name = name;
        this.color = color;
    }

     public String toString () {
         return "name is " + name + " color is " + color;
     }
 }

public class Lab9_1 {
    public static void main(String[] args) {
        potato potato = new potato("potato","brown");
        brinjal brinjal = new brinjal("brinjal","purple");
        tomato tomato = new tomato("tomato","red");

        System.out.println(potato);
        System.out.println(brinjal);
        System.out.println(tomato);

    }
}
