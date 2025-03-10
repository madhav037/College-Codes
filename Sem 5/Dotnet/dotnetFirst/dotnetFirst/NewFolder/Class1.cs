using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dotnetFirst.NewFolder
{
    public class Class1
    {
        protected int a;
    }
    public class Demo : Class1
    {
        int a;

        public void displaY()
        {
            a = 3;
            base.a = 4;
        }
    }
    
}

//TranStack Query

