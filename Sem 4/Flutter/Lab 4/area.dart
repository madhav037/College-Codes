import 'dart:io';

double area({double? r, double? l, double? b, double? h}) {
  if (r != null) {
    return 3.14 * r * r;
  } else if (l != null) {
    return l * l;
  } else if (b != null && h != null) {
    return 0.5 * b * h;
  } else {
    return 0.0;
  }
}

void main() {
  print(
      "Enter 1 to find area of circle \nEnter 2 to find area of square\nEnter 3 to find area of triangle: ");
  int n = int.parse(stdin.readLineSync()!);
  switch (n) {
    case 1:
      stdout.write("Enter radius : ");
      double r = double.parse(stdin.readLineSync()!);
      print("area of circle is : ${area(r: r)}");
      break;
    case 2:
      stdout.write("Enter length : ");
      double l = double.parse(stdin.readLineSync()!);
      print("Area of square is : ${area(l: l)}");
      break;
    case 3:
      stdout.write("Enter b : ");
      double b = double.parse(stdin.readLineSync()!);
      stdout.write("Enter h : ");
      double h = double.parse(stdin.readLineSync()!);
      print("area of triangle is : ${area(b: b, h: h)}");
    case _:
      print("Error");
  }
}
