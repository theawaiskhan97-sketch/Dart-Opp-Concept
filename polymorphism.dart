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

class Dog extends Animal {
  @override
  void sound() {
    print("Bark");
  }
}

void main() {
  Animal a1 = Cat();
  Animal a2 = Dog();

  a1.sound();
  a2.sound();
}
