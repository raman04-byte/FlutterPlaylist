class Mobile {
  String name = '';
  int price = 10000;

  Mobile(name, price) {
    this.name = name;
    this.price = 13000;
    print("Mobile name is ${name} and price is ${price}");
  }
}

void main() {
  Mobile mob=new Mobile("Samsung", 12000);
}
