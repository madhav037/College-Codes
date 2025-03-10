package vsJAVA;

interface eventListener {
    public void performEvent();

}

interface mouseListener extends eventListener{
    public void mouseClicked();
    public void mousePressed();
    public void mouseReleased();
    public void mouseMoved();
    public void mouseDragged();
}


interface keyListener extends eventListener {
    public void keyPressed();
    public void keyRelease();
}

class eventDemo implements mouseListener, keyListener {
    public void performEvent(){
        System.out.println("PerformEvent");
    }

    public void mouseClicked(){
        System.out.println("mouseClicked");
    }
    public void mousePressed(){
        System.out.println("mousePressed");
    }
    public void mouseReleased(){
        System.out.println("mouseReleased");
    }
    public void mouseMoved(){
        System.out.println("mouseMoved");
    }
    public void mouseDragged(){
        System.out.println("mouseDragged");
    }
    public void keyPressed(){
        System.out.println("keyPressed");
    }
    public void keyRelease(){
        System.out.println("keyReleased");
    }
}

public class Lab9_2 {
    public static void main(String[] args) {
        eventDemo e = new eventDemo();
        e.performEvent();
        e.mouseClicked();
        e.mouseDragged();
        e.mousePressed();
        e.mouseReleased();
        e.mouseMoved();
        e.keyPressed();
        e.keyRelease();
    }
}
