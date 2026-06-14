// ===== Blueprint (Class) =====
class Car {
  // Fields — data the car stores
  String brand;
  String color;
  int year;
  bool isRunning = false; // starts as OFF

  // Constructor — runs when you create a Car
  Car(this.brand, this.color, this.year);

  // Methods — things the car can do
  void drive() {
    isRunning = true;
    print('$brand is now driving!');
  }

  void showInfo() {
    print('$year $color $brand | Running: $isRunning');
  }
}

// ===== main() — program starts here =====
void main() {
  // Create object 1 — my car
  var myCar = Car('Toyota', 'Red', 2020);

  // Create object 2 — friend's car
  var friendCar = Car('Honda', 'Blue', 2022);

  // Use myCar's methods
  myCar.showInfo(); // before driving
  myCar.drive();
  myCar.showInfo(); // after driving — isRunning is now true

  print('---');

  // Use friendCar's methods
  friendCar.showInfo();
}
