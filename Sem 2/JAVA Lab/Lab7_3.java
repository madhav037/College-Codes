package vsJAVA;

class Rectangle{
    int length;
    int width;
    static int count;

    Rectangle(){
        length = 0;
        width = 0;
        count++;
    }
    Rectangle(int length, int width){
        System.out.println("area = " + length*width);
    }
    Rectangle(Rectangle r){

    }
}

public class Lab7_3 {

}
