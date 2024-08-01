import 'dart:io';

void main() {
  List arr = [];
  int odd = 0, even = 0, n;

  stdout.write("Enter n : ");
  n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write("Enter value : ");
    arr.add(int.parse(stdin.readLineSync()!));
  }
  for (int i in arr) {
    if (i % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }
  print("odd = ${odd}\n even = ${even}");
  return;
}
