using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dotnetFirst
{
    public class Salary
    {
        public int Basic;
        public int TA;
        public int DA;
        public int HRA;

        public Salary()
        {
            this.DA = 100;
            this.HRA = 100;
        }

        public void getSalaryDetails(int Basic, int TA, int DA=0, int HRA=0)
        {
            this.Basic = Basic;
            this.TA = TA;
            this.DA = DA;
            this.HRA = HRA;
        }

        public void DisplaySalary()
        {
            Console.WriteLine(this.Basic + this.TA + this.HRA + this.DA);
        }
    }
}
