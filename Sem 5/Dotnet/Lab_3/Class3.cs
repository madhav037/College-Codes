using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab_3
{
    public class RBI
    {
        public virtual void CalcIntrest()
        {
            Console.WriteLine("calc intrest");
        }
    }

    public class SBI : RBI
    {
        public override void CalcIntrest()
        {
            Console.WriteLine("Calc intrest SBI");
        }
    }
    public class HDFC : RBI
    {
        public override void CalcIntrest()
        {
            Console.WriteLine("Calc intrest HDFC");
        }
    }
    public class ICICI : RBI
    {
        public override void CalcIntrest()
        {
            Console.WriteLine("Calc intrest ICICI");
        }
    }

    public class dele
    {
        public delegate int Fac(int a, Fac fac);

        public int Calc(Fac fac, int a)
        {
            return fac(a, fac);
        }
    }
}
