class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Cat extends Animal {}

void main() {
  Cat cat = Cat();

  cat.eat();
}
