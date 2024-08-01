import 'dart:io';

void main() {
  stdout.write("Enter num 1 : ");
  int num_1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter num 2 : ");
  int num_2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter num 3 : ");
  int num_3 = int.parse(stdin.readLineSync()!);

  if (num_1 > num_2) {
    if (num_1 > num_3) {
      print("${num_1} is largest");
    } else {
      print("${num_3} is largest");
    }
  } else {
    if (num_2 > num_3) {
      print("${num_2} is largest");
    } else {
      print("${num_3} is largest");
    }
  }
}
