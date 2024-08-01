import 'dart:io';

void fibonaci(int n) {
  int a = 0, b = 1, c = 0;
  for (int i = 0; i < n; i++) {
    print("$a");
    c = a + b;
    a = b;
    b = c;
  }
}

void main() {
  stdout.write("Enter num : ");
  int n = int.parse(stdin.readLineSync()!);
  fibonaci(n);
}
