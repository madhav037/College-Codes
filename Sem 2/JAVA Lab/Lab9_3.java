package vsJAVA;

import javax.xml.catalog.CatalogManager;
import java.util.Scanner;

interface Transport{
    public void deliver();
}

abstract class Animal{

}

class Tiger extends Animal{

}

class Camel extends Animal implements Transport {
    public void deliver(){
        System.out.println("hello from camel");
    }
}
class Deer extends Animal {

}
class Donkey extends Animal implements Transport {
    public void deliver(){
        System.out.println("hello from donkey");
    }
}


public class Lab9_3 {
    public static void main(String[] args) {
        Animal[] animalObjects = new Animal[4];
        animalObjects[0] = new Camel();
        animalObjects[1] = new Tiger();
        animalObjects[2] = new Deer();
        animalObjects[3] = new Donkey();

    }
}

