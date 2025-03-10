import 'dart:io';

void main() {
  List arr = [];
  int total = 0;
  for (int i = 0; i < 5; i++) {
    stdout.write("Enter sub ${i + 1} marks (out of 100) : ");
    arr.add(int.parse(stdin.readLineSync()!));
    total += arr[i] as int;
  }
  double percent = (total / 500) * 100;

  switch (percent) {
    case < 35:
      print("Fail");
      break;
    case < 45:
      print("Pass class");
      break;
    case < 60:
      print("Second class");
      break;
    case < 70:
      print("Frist class");
      break;
    case > 70:
      print("Distinction");
      break;
    default:
      print("Enter correct value");
  }
}
