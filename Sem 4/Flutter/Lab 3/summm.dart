import 'dart:io';

void main() {
  bool a = true;
  int even = 0;
  int odd = 0;
  while (a) {
    stdout.write("Enter integer : ");
    int num = int.parse(stdin.readLineSync()!);
    if (num > 0 && num % 2 == 0) {
      even += num;
    } else if (num < 0 && num % 2 != 0) {
      odd += num;
    } else if (num == 0) {
      break;
    }
  }
  print("odd negative sum = $odd");
  print("even positive sum = $even");
}
