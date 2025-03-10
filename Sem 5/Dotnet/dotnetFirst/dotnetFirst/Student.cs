using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Text;
using System.Threading.Tasks;

namespace dotnetFirst
{
    internal class Student
    {
        BigInteger Endrollment_No;
        string Student_Name;
        int Semester;
        decimal CPI;
        decimal SPI;
        public Student(BigInteger Endrollment_No, string Student_Name, int Semester, decimal CPI, decimal SPI)
        {
            this.Endrollment_No = Endrollment_No;
            this.Student_Name = Student_Name;
            this.Semester = Semester;
            this.CPI = CPI;
            this.SPI = SPI;
        }

        public void DisplayStudentDetails()
        {
            Console.WriteLine("Endrollment number : {0}", this.Endrollment_No);
            Console.WriteLine("Student name : {0}", this.Student_Name);
            Console.WriteLine("semester : {0}", this.Semester);
            Console.WriteLine("CPI : {0}", this.CPI);
            Console.WriteLine("SPI : {0}", this.SPI);
        }
    }

}
