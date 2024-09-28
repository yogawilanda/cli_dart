int calculate() {
  return 6 * 7;
}

String hello(String name) {
  return 'My Name is $name';
}

// Looping example
void looping() {
  for (int i = 0; i < 5; i++) {
    print('Hello $i');
  }
}

// add
add(int x, y) {
  return x + y;
}

// make a order class
class Order {
  String name;
  int quantity;
  double price;

  Order(this.name, this.quantity, this.price);

  double total() {
    return quantity * price;
  }
}

// make a list of order class
List<Order> orders = [
  Order('Apple', 2, 2.5),
  Order('Orange', 3, 3.5),
  Order('Banana', 4, 4.5),
];

// getter and setter
class GetterSetterContoh {
  String? _name;

  String get name => _name!;
  set name(String value) => _name = value;
}
