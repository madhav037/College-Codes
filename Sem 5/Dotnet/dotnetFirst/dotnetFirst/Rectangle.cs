using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dotnetFirst
{
    internal class Rectangle
    {

        public Rectangle(double l, double b)
        {
            Console.WriteLine("Area of rectange with length {0}, breath {1} is {2}",l,b,l*b);
        }
    }
}
