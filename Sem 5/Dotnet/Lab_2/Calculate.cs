using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_2
{
    interface Calculate
    {
        int Add(int a, int b);

        int Sub(int a, int b);
    }

    class Result : Calculate
    {
        public int Add(int a, int b)
        {
            return a + b;
        }

        public int Sub(int a, int b)
        {
            return a - b;
        }
    }
}
