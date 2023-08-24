class ParentClass {
  void functionName() {
    print("This is a parent class");
  }
}

class ChildClass extends ParentClass {
  @override
  void functionName() {
    print("This is a child class");
  }
}

void main() {
  ChildClass childClass = new ChildClass();
  childClass.functionName();
  ParentClass parentClass = new ParentClass();
  parentClass.functionName();
}
