using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_3
{
    internal class Class2
    {
        public void CalcArea(int side)
        {
            Console.WriteLine(side * side);
        }

        public void CalcArea(int length, int width)
        {
            Console.WriteLine(length * width);
        }
    }
}
