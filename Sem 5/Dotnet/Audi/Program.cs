// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");

string Fname = "Madhav";
String Lname = "Lehru";

Console.WriteLine("Length : {0}",Fname.Length);
Console.WriteLine("Concat : {0}",string.Concat(Fname, Lname));
Console.WriteLine("Equal : {0}", Fname.Equals(Lname));
Console.WriteLine("Upper : {0}",Lname.ToUpper());
Console.WriteLine("substring : {0}",Lname.Substring(2,3));
Console.WriteLine("contains : {0}", Fname.Contains('M'));

var s = Fname.Clone();
Console.WriteLine(s);

Console.WriteLine((s.ToString().Normalize()));
Console.WriteLine(s.ToString());

//public : access everywhere
//private : access within class
//protected :  access within class and child classes
