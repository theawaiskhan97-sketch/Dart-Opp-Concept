mixin Fly {
  void fly() {
    print("Flying...");
  }
}

class Bird with Fly {}

void main() {
  Bird bird = Bird();

  bird.fly();
}
