class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  // @override
  void eat() {
    print("Dog is eating");
  }
}
void main() {
  Dog dog = new Dog();
  dog.eat();
}
