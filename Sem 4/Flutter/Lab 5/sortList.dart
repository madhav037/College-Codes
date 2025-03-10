import 'dart:io';

void main() {
  List arr = [];
  for (int i = 0; i < 5; i++) {
    stdout.write("Enter num : ");
    arr.add(int.parse(stdin.readLineSync()!));
  }

  arr.sort();
  print(arr);
}
