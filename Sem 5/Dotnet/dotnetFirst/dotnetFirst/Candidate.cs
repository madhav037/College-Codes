using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dotnetFirst
{
    internal class Candidate
    {
        int ID;
        string Name = "";
        int Age;
        decimal Weight;
        decimal Height;
        
        public void GetCandidateDeatils(int id, string name, int age, decimal weight, decimal height)
        {
            this.ID = id;
            this.Name = name;
            this.Age = age;
            this.Weight = weight;
            this.Height = height;
        }

        public void DisplayCandidateDetails()
        {
            Console.WriteLine("ID : {0}",this.ID);
            Console.WriteLine("Name : {0}",this.Name);
            Console.WriteLine("Age : {0}",this.Age);
            Console.WriteLine("Weight : {0}",this.Weight);
            Console.WriteLine("Height : {0}", this.Height);
        }
    }
}
