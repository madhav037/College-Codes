import 'dart:io';

void main() {
  stdout.write("Enter value 1 : ");
  int val_1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter value 2 : ");
  int val_2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter symbol ( +, -, *, /, %) : ");
  String symbol = stdin.readLineSync()!;

  switch (symbol) {
    case '+':
      print("Sum is : ${val_1 + val_2}");
      break;
    case '-':
      print("Sub is : ${val_1 - val_2}");
      break;
    case '*':
      print("Multi is : ${val_1 * val_2}");
      break;
    case '/':
      print("Div is : ${val_1 / val_2}");
      break;
    case '%':
      print("Modulo is : ${val_1 % val_2}");
      break;
    default:

  }
}
