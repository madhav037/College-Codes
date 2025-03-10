using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dotnetFirst
{
    class Account_Details
    {
        public string Name;
        public decimal Amount;
        public decimal Intrest_rate;
        public decimal Time;

        public void GetAccountDetails()
        {
            Console.Write("Enter Account Holder Name : ");
            this.Name = Console.ReadLine()!;

            Console.Write("Enter Amount: ");
            this.Amount = decimal.Parse(Console.ReadLine()!);

            Console.Write("Enter Interest Rate : ");
            this.Intrest_rate = decimal.Parse(Console.ReadLine()!);

            Console.Write("Enter Time Period : ");
            this.Time = decimal.Parse(Console.ReadLine()!);
        }
    }

    class Intrestt : Account_Details
    {
        public decimal CalcIntrest()
        {
            return (this.Amount * this.Intrest_rate * this.Time)/100;
        }
    }
}
