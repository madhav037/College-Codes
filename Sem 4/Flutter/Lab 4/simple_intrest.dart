import 'dart:io';

double simpleIntrest(int p, int r, int t) {
  return (p * r * t) / 100;
}

void main() {
  stdout.write("Enter p : ");
  int p = int.parse(stdin.readLineSync()!);
  stdout.write("Enter r : ");
  int r = int.parse(stdin.readLineSync()!);
  stdout.write("Enter t : ");
  int t = int.parse(stdin.readLineSync()!);
  double ans = simpleIntrest(p, r, t);
  print("ans is : $ans");
}
