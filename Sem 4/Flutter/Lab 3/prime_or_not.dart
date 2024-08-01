import 'dart:io';

void main() {
  stdout.write("Enter num : ");
  int n = int.parse(stdin.readLineSync()!);
  bool flag = false;
  for (var i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      flag = true;
      break;
    }
  }
  if (flag)
    print("not Prime");
  else
    print("Prime");
}
