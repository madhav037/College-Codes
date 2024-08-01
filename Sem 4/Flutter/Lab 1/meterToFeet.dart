import 'dart:io';

void main() {
  stdout.write("Enter distance in meters : ");
  double meters = double.parse(stdin.readLineSync()!);
  double feet = meters * 3.281;
  print("Feet : ${feet}");
}
