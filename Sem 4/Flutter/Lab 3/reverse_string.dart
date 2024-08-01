import 'dart:io';

void main() {
  stdout.write("Enter string : ");
  String stri = stdin.readLineSync()!;
  int j = stri.length - 1;
  String ans = "";
  for (var i = j; i >= 0; i--) {
    ans += stri[i];
  }
  String revAns = stri.split('').reversed.join();
  print('$ans');
  print('$revAns');
}
