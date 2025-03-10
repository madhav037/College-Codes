import 'dart:io';

void main() {
  stdout.write("Enter num 1 : ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter num 2 : ");
  int b = int.parse(stdin.readLineSync()!);

  for (int i = a; i <= b; i++) {
    if (i % 2 == 0 && i % 3 != 0) {
      print('$i');
    }
  }
}
