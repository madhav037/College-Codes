import 'dart:io';

void main() {
  List arr = [];
  int sum = 0;
  stdout.write("Enter total index : ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write("Enter value : ");
    arr.add(int.parse(stdin.readLineSync()!));
  }

  for (int i in arr) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }
  print(sum);
}
