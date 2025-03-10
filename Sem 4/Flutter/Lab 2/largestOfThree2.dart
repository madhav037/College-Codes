import 'dart:io';

void main() {
  stdout.write("Enter num 1 : ");
  int num_1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter num 2 : ");
  int num_2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter num 3 : ");
  int num_3 = int.parse(stdin.readLineSync()!);

  num_1 > num_2
      ? (num_1 > num_3 ? print(num_1) : print(num_3))
      : (num_2 > num_3 ? print(num_2) : print(num_3));
}
