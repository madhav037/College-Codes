// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");
//Console.WriteLine("hello");

using dotnetFirst;
using System.Collections;
using System.Diagnostics.CodeAnalysis;
using System.Security.Cryptography.X509Certificates;

class Madhav
{
    public static void Main()
    {
        //Console.WriteLine("1. Candidate");
        //Console.WriteLine("2. Staff");
        //Console.WriteLine("3. Bank account");
        //Console.WriteLine("4. Student");
        //Console.WriteLine("5. Rectangle");
        //Console.WriteLine("6. Account details");
        //Console.WriteLine("7. Salary");
        //Console.WriteLine("8. Distance");
        //Console.WriteLine("9. Furniture");
        //Console.WriteLine("10. Inheritance");
        //Console.WriteLine("Enter 1-9 to execute a program or 0 to exit : ");
        //int ans = int.Parse(Console.ReadLine()!);

        //switch (ans)
        //{
        //    case 1:
        //        Run1Lab();
        //        break;
        //    case 2:
        //        Run2Lab();
        //        break;
        //    case 3:
        //        Run3Lab();
        //        break;
        //    case 4:
        //        Run4Lab();
        //        break;
        //    case 5:
        //        Run5Lab();
        //        break;
        //    case 6:
        //        Run6Lab();
        //        break;
        //    case 7:
        //        Run7Lab();
        //        break;
        //    case 8:
        //        Run8Lab();
        //        break;
        //    case 9:
        //        Run9Lab();
        //        break;
        //    case 10:
        //        Run10Lab();
        //        break;
        //    default:
        //        Console.WriteLine("Invalid input");
        //        break;
        //}

        void Run1Lab()
        {
            Candidate c = new Candidate();
            c.GetCandidateDeatils(id: 0, name: "Madhav", age: 20, weight: 65, height: 170);
            c.DisplayCandidateDetails();
        }

        void Run2Lab()
        {
            Staff[] s = new Staff[5];

            for (int i = 0; i < s.Length; i++)
            {
                s[i] = new Staff();

                Console.Write("Enter name : ");
                string name = Console.ReadLine()!;
                Console.Write("Enter department : ");
                string dept = Console.ReadLine()!;
                Console.Write("Enter designation : ");
                string des = Console.ReadLine()!;
                Console.Write("Enter experience : ");
                decimal exp = decimal.Parse(Console.ReadLine()!);
                Console.Write("Enter salary : ");
                decimal sal = decimal.Parse(Console.ReadLine()!);

                s[i].GetStaffDetails(name, dept, des, exp, sal);
            }

            for (int i = 0; i < s.Length; i++)
            {
                if (s[i].Designation.ToLower().Equals("hod"))
                {
                    Console.WriteLine("Name is {0}, and salary is {1}", s[i].Name, s[i].Salary);
                }
            }
        }

        void Run3Lab()
        {
            Bank_Account b = new Bank_Account();
            b.GetAccountDeatils(010101100, "email@gmail.com", "username", "saving", 1000000000);
            b.DisplayAccountDetails();
        }

        void Run4Lab()
        {
            Student st = new Student(22010101100, "Madhav", 5, 8.91m, 9.0m);
            st.DisplayStudentDetails();
        }

        void Run5Lab()
        {
            Rectangle r = new Rectangle(2, 4);
        }

        void Run6Lab()
        {
            Intrestt i = new Intrestt();
            i.GetAccountDetails();
            decimal ans = i.CalcIntrest();
            Console.WriteLine(ans);
        }

        void Run7Lab()
        {
            Salary s = new Salary();
            s.getSalaryDetails(10000, 100, 1000);
        }

        void Run8Lab()
        {

        }

        void Run9Lab()
        {

        }

        void Run10Lab()
        {

        }


        //cs[] cd = new cs[5];
        //for (int I = 0 ; I < cd.Length; I++)
        //{
        //    cd[I] = new cs();
        //    cd[I].salary = I;
        //}

        //foreach (var obj in cd) {
        //    Console.WriteLine(obj.salary + obj.salary * 0.1 + " Original Salary : " + obj.salary);
        //}

        //char[] b = { 'm', 'f', 'f', 'm', 'm', 'f' };
        //int count_b = 0;
        //foreach(var i in b)
        //{
        //    if (i.Equals('b'))
        //    {
        //        count_b++;
        //    }
        //}

        //Console.WriteLine("{0}, {1}", count_b, b.Length-count_b);

        //Stack s = new Stack();
        //s.Push(5);
        //s.Push(6);
        //s.Push(4);
        //s.Push(2);
        //s.Pop();

        //Hashtable hd = new Hashtable();
        //hd.Add("name","Madhav");
        //hd.Add("id",220101010100);
        //hd.Add("age", 20);
        //hd.Add("email", "madhavlehru@gmail.com");

        //foreach (var obj in hd.Keys)
        //{
        //    Console.WriteLine("{0} : {1}", obj, hd[obj]);
        //}

        //hd.Remove("name");
        //foreach (var obj in hd.Keys)
        //{
        //    Console.WriteLine("{0} : {1}", obj, hd[obj]);
        //}

        BitArray b = new BitArray(10);
        b[0] = true;
        b[1] = true;
        b[2] = true;

        for (int i = 0; i < 3; i++)
        {
            b[i] = true;
        }
        Console.WriteLine(b.);
        Console.WriteLine(b.Length);
        Console.WriteLine(b.Count);


    }
}