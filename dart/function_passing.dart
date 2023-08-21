void main() {
  printName();
  printName(name: "Family");
  printName(age: 80);
  printName(name: "Family", age: 80);

  print(additionOfNumbers(10, 50));
  print(name("Raman"));
  // main();
}

void printName({String name = "Raman", int age = 20}) {
  print("My name is ${name} and my age is ${age}");
}

int additionOfNumbers(int a, int b) {
  double c = multiplication(a.toDouble(), b.toDouble());
  return a + b + c.toInt();
}

String name(String name) {
  return name;
}

double multiplication(double a, b) {
  return a * b;
}


// NO OUTPUT = void
// INT OUTPUT= int
// STRING OUTPUT= String
// DOUBLE OUTPUT= double
// BOOL OUTPUT= bool
// LIST OUTPUT= List
// MAP OUTPUT= Map
// SET OUTPUT= Set
// RUNES OUTPUT= Runes