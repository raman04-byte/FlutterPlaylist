class Employee {
  void salary() {
    print("Salary of an employee \$1000");
  }
}

class Manager extends Employee {
  @override
  void salary() {
    print("Salary of a manager \$2000");
  }
}

class Developer extends Employee {
  @override
  void salary() {
    print("Salary of a developer \$3000");
  }
}

void main() {
  Manager manager = new Manager();
  Developer developer = new Developer();
  manager.salary();
  developer.salary();
}
