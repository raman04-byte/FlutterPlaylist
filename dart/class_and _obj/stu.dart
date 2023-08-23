class Student {
  var name;
  var age;
  var rollNo;

  stdname() {
    print("My name is ${name}");
    print("My age is ${age}");
    print("My rollNo is ${rollNo}");
  }

  Student(String name, int age, int rollNo) {
    print("This is a constructor");
    
  }
}
