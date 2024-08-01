// See https://aka.ms/new-console-template for more information
using Lab_3;

Console.WriteLine("Hello, World!");

Console.WriteLine("Enter Lab number : ");
int lab = int.Parse(Console.ReadLine()!);

switch (lab)
{
    case 1:
        lab1();
        break;
    case 2:
        lab2();
        break;
    case 3:
        lab3();
        break;
}

static void lab1()
{
    Class1 class1 = new Class1();
    class1.Add(1, 2);
    class1.Add(10.5f, 20.5f);
}

static void lab2()
{
    Class2 class2 = new Class2();
    class2.CalcArea(5);
    class2.CalcArea(5, 5);
}

static void lab3()
{
    dele d = new dele();
    int a = d.Calc((a, fac) => { 
        if (a == 1)
        {
            return 1;
        }
        return a * fac(a - 1, fac);
        }, 5);

    Console.WriteLine(a);
}