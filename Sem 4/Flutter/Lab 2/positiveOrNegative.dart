import 'dart:io';

void main() {
  stdout.write("Enter number : ");
  int number = int.parse(stdin.readLineSync()!);
  if (number > 0) {
    stdout.write("Positive");
  } else {
    stdout.write("Negative");
  }
}
