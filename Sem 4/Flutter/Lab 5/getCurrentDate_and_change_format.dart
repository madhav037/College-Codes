void main() {
  DateTime now = DateTime.now();
  List<String> monthNames = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
  print("${now.day}/${now.month}/${now.year}");
  print("${now.day}-${now.month}-${now.year}");
  print("${now.day}-${monthNames[now.month-1]}-${now.year}");
  print("${now.day}/${now.month}/${now.year.toString().substring(2)}");
}
