import 'dart:io';

void main() {
  int sum = 0;
  print("Enter -1 to exit");
  while (true) {
    stdout.write("Enter a number: ");
    int input = int.parse(stdin.readLineSync()!);
    if (input == -1) break;
    if (input % 3 == 0 || input % 5 == 0) sum += input;
  }
  print(sum);
}
