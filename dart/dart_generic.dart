void main() {
  List<int> number = [1, 2, 3, 4, 5, 6, 7, 8];
  List<double> doubleNumber = doubleListElement(number);
  print(doubleNumber);

  // Filtering even numbers
  var evenNumbers = number.where((number) => number % 2 == 0);
  print(evenNumbers);

  // Mapping
  var sqaureNumers = number.map((number) => number * number);
  print(sqaureNumers);

  // Reducing
  var sum = number.reduce((value, element) => value + element);
  print(sum);
}

List<double> doubleListElement(List<int> inputList) {
  List<double> outputList = [];
  for (var number in inputList) {
    outputList.add(number.toDouble() * 2);
  }
  return outputList;
}
