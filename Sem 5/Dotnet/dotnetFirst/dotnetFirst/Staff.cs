using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dotnetFirst
{
    public class Staff
    {
        public string Name;
        public string Department;
        public string Designation;
        public decimal Exprience;
        public decimal Salary;

        public Staff()
        {
            this.Name = string.Empty;
            this.Department = string.Empty;
            this.Designation = string.Empty;
            this.Exprience = 0;
            this.Salary = 0;
        }

        public void GetStaffDetails(string name, string department, string designation, decimal exp, decimal salary)
        {
            this.Name = name;
            this.Department = department;
            this.Designation = designation;
            this.Exprience = exp;
            this.Salary = salary;
        }
        
        public void DisplayStaffDetails()
        {
            Console.WriteLine(this.Name);
            Console.WriteLine(this.Salary);
        }

    }
}
