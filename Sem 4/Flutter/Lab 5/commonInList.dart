import 'dart:io';

List commonElements({required List a, required List b}) {
  List ans = [];
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < b.length; j++) {
      if (a[i] == b[j]) {
        ans.add(a[i]);
      }
    }
  }
  return ans;
}

void main() {
  List arr = [];
  List arr2 = [];

  print("LIST 1 ");
  stdout.write("Enter length of list 1 : ");
  int a = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < a; i++) {
    stdout.write("Enter num : ");
    arr.add(int.parse(stdin.readLineSync()!));
  }

  print("LIST 2 ");
  stdout.write("Enter length of list 2 : ");
  int a2 = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < a2; i++) {
    stdout.write("Enter num : ");
    arr2.add(int.parse(stdin.readLineSync()!));
  }

  print(commonElements(a: arr, b: arr2));
}
