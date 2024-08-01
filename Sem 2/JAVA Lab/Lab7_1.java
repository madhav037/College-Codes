package vsJAVA;

class Box{
    int length;
    int width;
    int height;
    static int cnt;

    Box(int length, int width, int height){
        this.length = length;
        this.height = height;
        this.width = width;
        cnt++;
    }
    //copy constructor
    Box(Box b)
    {
        this.length=b.length;
        this.width=b.width;
        this.height=b.height;
        cnt++;
    }
    void display(){
        System.out.println("Length = " + length);
        System.out.println("Width = " + width);
        System.out.println("Height = " + height);
        System.out.println();
    }
    int volume(){
        return length*width*height;
    }
}

public class Lab7_1 {
    public static void main(String[] args) {
        Box b = new Box(5,10,52);
        b.display();
        b.volume();
        Box b2=new Box(b);
        b2.display();
        b2.volume();
        System.out.println("objects called : " + Box.cnt);
    }
}
