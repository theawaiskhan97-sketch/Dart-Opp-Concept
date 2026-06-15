class Animal {
  void sound() {}
}

class Dog implements Animal {
  @override
  void sound() {
    print("Bark");
  }
}

void main() {
  Dog dog = Dog();

  dog.sound();
}
