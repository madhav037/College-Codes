import 'dart:io';

int maxNum(int a, int b) {
  return a > b ? a : b;
}

void main() {
  stdout.write("Enter num 1 : ");
  int num_1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter num 2 : ");
  int num_2 = int.parse(stdin.readLineSync()!);
  print("max num is ${maxNum(num_1, num_2)}");
}
