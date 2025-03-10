// See https://aka.ms/new-console-template for more information
using Lab_2;

Console.WriteLine("Hello, World!");

Console.WriteLine("Enter Lab number : ");
int lab = int.Parse(Console.ReadLine()!);

switch (lab)
{
    case 1:
        Lab1();
        break;
    case 2:
        Lab2();
        break;
    case 3:
        Lab3();
        break;
    case 4:
        Lab4();
        break;
    case 5:
        Lab5();
        break;
    case 6:
        Lab6();
        break;
    case 7:
        Lab7();
        break;
    case 8:
        Lab8();
        break;
    case 9:
        Lab9();
        break;
    case 10:
        Lab10();
        break;
    default:
        Console.WriteLine("Enter valid lab number");
        break;
}


static void Lab1()
{
    try
    {
        int a = 2;
        Console.WriteLine("Enter number : ");
        int b = int.Parse(Console.ReadLine()!);
        decimal c = a / b;

    }
    catch (DivideByZeroException)
    {
        Console.WriteLine("Divide by zero exception");
    }
    finally
    {
        Console.WriteLine("No divide by zero exception!");
    }
}

static void Lab2()
{
    int[] arr = new int[5];
    for (int i = 0; i < 6; i++)
    {
        try
        {
            Console.WriteLine("Enter input : ");
            arr[i] = int.Parse(Console.ReadLine()!);
        }
        catch (IndexOutOfRangeException)
        {
            Console.WriteLine("Index out of range error");
        }
    }
}

static void Lab3()
{
    Calculatee calc = new Calculatee();

    int sumTwo = calc.SumOfTwo(5, 10);
    Console.WriteLine("Sum of two numbers (5, 10): " + sumTwo);

    int sumThree = calc.SumOfThree(5, 10, 15);
    Console.WriteLine("Sum of three numbers (5, 10, 15): " + sumThree);
}

static void Lab4()
{
    Result result = new Result();

    int sum = result.Add(10, 5);
    Console.WriteLine("Addition of 10 and 5: " + sum);

    int difference = result.Sub(10, 5);
    Console.WriteLine("Subtraction of 10 and 5: " + difference);
}

static void Lab5()
{
    string str1 = "Hello, World!";
    string str2 = "HellO";
    string str3 = "ellloo";

    Console.WriteLine("Length of str1: " + str1.Length);

    Console.WriteLine("str1 contains 'World': " + str1.Contains("World"));

    Console.WriteLine("Index of 'World' in str1: " + str1.IndexOf("World"));

    Console.WriteLine("Substring of str1 from index 7: " + str1.Substring(7));

    Console.WriteLine("str2 in uppercase: " + str2.ToUpper());

    Console.WriteLine("str3 in lowercase: " + str3.ToLower());
}

static void Lab6()
{
    string str = "Hello";
    string str2 = "";
    foreach (char c in str)
    {
        if (Convert.ToInt32(c) >= Convert.ToInt32('a') && Convert.ToInt32(c) <= Convert.ToInt32('z'))
        {
            str2 += Convert.ToChar(Convert.ToInt32(c) - 32);
        }else
        {
            str2 += Convert.ToChar(Convert.ToInt32(c) + 32);
        }
    }
    Console.WriteLine(str2);
}

static void Lab7()
{
    Ishape s = new Inserface();
    s.Square(3);
    s.Triangle(3, 4);
    s.Circle(2);
}

static void Lab8()
{
    int n = int.Parse(Console.ReadLine()!);
    try
    {
        if (n % 2 == 0)
        {
            Console.WriteLine("Number even");
        }
        else
        {
            throw new Exception();
        }
    }
    catch (Exception ex)
    {
        Console.WriteLine("not even");
    }
}

static void Lab9()
{
    string s = "hello is this am i doing npoooooo no noo";
    String[] s2 = s.Split(" ");
    int max = 0;
    string word = "";
    foreach (var i in s2)
    {   
        if (i.Length > max)
        {
            max = i.Length;
            word = i;
        }
    }
    Console.WriteLine(word);
}

static void Lab10()
{
    Console.Write("Enter char : ");
    char ch = char.Parse(Console.ReadLine()!);
    if (Convert.ToInt32(ch) >= Convert.ToInt32('a') && Convert.ToInt32(ch) <= Convert.ToInt32('z'))
    {
        Console.WriteLine(Convert.ToChar(Convert.ToInt32(ch) - 32));
    }
    else
    {
        Console.WriteLine(Convert.ToChar(Convert.ToInt32(ch) + 32));
    }
}