import 'dart:io';

void main() {
  double height = double.parse(stdin.readLineSync()!) * 0.0254;
  double weight = double.parse(stdin.readLineSync()!) * 0.45359237;

  print("BMI = ${weight / (height * height)}");
}
