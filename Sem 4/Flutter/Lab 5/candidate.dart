import 'dart:io';

void main() {
  Candidate c = new Candidate();
  stdout.write("Id : ");
  int id = int.parse(stdin.readLineSync()!);
  stdout.write("name : ");
  String name = stdin.readLineSync()!;
  stdout.write("age : ");
  int age = int.parse(stdin.readLineSync()!);
  stdout.write("weight : ");
  double weight = double.parse(stdin.readLineSync()!);
  stdout.write("height : ");
  double height = double.parse(stdin.readLineSync()!);
  c.getCandidateDetails(id, name, age, weight, height);
  c.displayCandidateDetails();
}

class Candidate {
  int? id;
  String? name;
  int? age;
  double? weight;
  double? height;

  Candidate() {
    this.id = 0;
    this.name = "invalid";
    this.age = 0;
    this.weight = 0.0;
    this.height = 0.0;
  }

  getCandidateDetails(
      int? id, String? name, int? age, double? weight, double? height) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.weight = weight;
    this.height = height;
  }

  displayCandidateDetails() {
    print("id is $id");
    print("name is $name");
    print("age is $age");
    print("weight is $weight");
    print("height is $height");
  }
}
