// hello() async {
//   print("Hello");
// }

// void main() async{
//   await hello();
//   print("End of main");
// }

Future delayPrint(int seconds, String msg) {
  final duration = Duration(seconds: seconds);
  return Future.delayed(duration).then((value) => msg);
}

void main() async {
  print("Hello");
  await delayPrint(3, "Viewers").then((value) => print(value));
  print("End of main");
}
