using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    public class Inserface : Ishape
    {
        public void Circle(double r)
        {
            Console.WriteLine(Math.PI * r * r);
        }
        public void Triangle(double b, double h)
        {
            Console.WriteLine(0.5 * b * h);
        }
        public void Square(double l)
        {
            Console.WriteLine(l * l);
        }
    }
    interface Ishape
    {
        public void Circle(double r);
        public void Triangle(double b, double h);
        public void Square(double l);
    }
}
