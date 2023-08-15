// Number
// String
// Boolean
// List
// Maps
// Runes

void main() {
  int a = 20;
  int b = 30;
  int c = a + b;
  print(c);

  double aa = .98;
  double bb = .83;
  double cc = aa + bb;
  print(cc);

  String name = "John";
  String surname = "Doe";
  String fullname = name + " " + surname;
  print(fullname);

  bool isTrue = true;
  bool isFalse = false;
  print(isTrue);
  print(isFalse);

  List number = [1, 2, 3, 4, 5, "Raman", 5.3, true];
  print(number);

  Map user = {"name": 'Raman', "age": 20, "isMale": true};
  print(user);

  var heart_symbol = '\u2665';
  var laungh_symbol = '\u{1f600}';
  print(heart_symbol);
  print(laungh_symbol);
}
