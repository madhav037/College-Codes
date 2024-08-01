import 'dart:io';

class Dictionary {
  String name;
  int number;
  int age;

  Dictionary(this.name, this.number, this.age);
}

void main() {
  Map<String, Dictionary> dic = new Map<String, Dictionary>();

  stdout.write("Total num of entries : ");
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write("Enter name : ");
    String name = stdin.readLineSync()!;
    stdout.write("Enter number : ");
    int number = int.parse(stdin.readLineSync()!);
    stdout.write("Enter age : ");
    int age = int.parse(stdin.readLineSync()!);

    dic[name] = Dictionary(name, number, age);
  }

  stdout.write("Enter name to search : ");
  String search = stdin.readLineSync()!;
  if (dic.containsKey(search)) {
    print("Name : ${dic[search]!.name}");
    print("Number : ${dic[search]!.number}");
    print("Age : ${dic[search]!.age}");
  } else {
    print("Not found!");
  }
}
