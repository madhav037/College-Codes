package vsJAVA;

import java.util.Scanner;

class ComplexNumbers{
    int real;
    int imaginary;

    ComplexNumbers(int real, int imaginary){
        this.real = real;
        this.imaginary = imaginary;
    }
    void add_complex(ComplexNumbers c){
        this.real = this.real + c.real;
        this.imaginary = this.imaginary + c.imaginary;
    }
}

public class Lab6_8 {
    public static void main(String[] args){
        ComplexNumbers c1 = new ComplexNumbers(2,5);
        ComplexNumbers c2 = new ComplexNumbers(4,7);
        c1.add_complex(c2);
        System.out.println(c1.real+" + "+c1.imaginary+"i");
    }
}
