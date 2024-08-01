import 'dart:io';

void main() {
  stdout.write("Enter value 1 : ");
  int val_1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter value 2 : ");
  int val_2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter symbol ( +, -, *, /, %) : ");
  String symbol = stdin.readLineSync()!;

  if (symbol == '+')
    print("Sum is : ${val_1 + val_2}");
  else if (symbol == '-')
    print("Sub is : ${val_1 - val_2}");
  else if (symbol == '*')
    print("Multi is : ${val_1 * val_2}");
  else if (symbol == '/')
    print("Div is : ${val_1 / val_2}");
  else if (symbol == '%')
    print("Modulo is : ${val_1 % val_2}");
  else
    print("Incorrect input");
}
