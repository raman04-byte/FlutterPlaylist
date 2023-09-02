// SYNTAX FOR EXCEPTION HANDLING
// try{
// statements
// }
// on Exception1{
// statements
// }
// catch Exception2{
// statements
// }

// finally{
// code should always be executed
// }

// CUSTON EXCEPTION

// class Custom_exp implements Exception {
//   String errMsg() => "Age is less than 18";
// }

void main() {
  // int x = 12;
  // int y = 0;
  // int res;

  // try {
  //   res = x ~/ y;
  // } on IntegerDivisionByZeroException {
  //   print("Cannot divide by zero");
  // }

  // try {
  //   res = x ~/ y;
  // }
  //  catch (e) {
  //   print(e);
  // }
  // try {
  //   res = x ~/ y;
  // } on IntegerDivisionByZeroException {
  //   print("Cannot divide by zero");
  // } finally {
  //   print("Finally block is always executed");
  // }

  // try {
  //   test_age(18);
  // } catch (e) {
  //   print('Age is less than 18');
  // }

  AmtException e = new AmtException();

  try {
    withdraw_amt(-1);
  } catch (e) {
    print(e);
  }
  finally{
    print("Finally block is always executed");
  }
}

void test_age(int age) {
  if (age < 18) {
    throw new FormatException();
  } else {
    print("Valid age");
  }
}

class AmtException implements Exception {
  String errMsg() => "Amount should be greater than zero";
}

void withdraw_amt(int amt) {
  if (amt < 0) {
    throw new AmtException();
  }
}