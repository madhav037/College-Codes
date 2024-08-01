void main() {
  List arr = [82, 83, 94, 85, 97];
  double per = 0.0, sum = 0;

  for (int i = 0; i < arr.length; i++) {
    sum += arr[i];
  }
  per = (sum / (arr.length * 100)) * 100;
  print(per);
}
