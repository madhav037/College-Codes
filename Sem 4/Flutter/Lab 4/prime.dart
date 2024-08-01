import 'dart:io';

int prime(int n) {
  bool flag = false;
  for (var i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      flag = true;
      break;
    }
  }
  if (flag)
    return 0;
  else
    return 1;
}

void main() {
  stdout.write("Enter num : ");
  int n = int.parse(stdin.readLineSync()!);

  print(prime(n));
}
