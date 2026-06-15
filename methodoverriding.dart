class Animal {
  void sound() {
    print("Animal sound");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Meow");
  }
}

void main() {
  Cat cat = Cat();

  cat.sound();
}
