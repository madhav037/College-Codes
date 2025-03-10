import 'dart:io';

void main() {
  Map<String, int> dic = new Map<String, int>();

  stdout.write("Total num of entries : ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write("Enter name : ");
    String name = stdin.readLineSync()!;
    stdout.write("Enter number : ");
    int? number = int.parse(stdin.readLineSync()!);
    dic[name] = number;
  }
  print(dic);
}
