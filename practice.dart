class Car {
  String brand;
  int year;
  // constructor
  Car(this.brand, this.year);
  void display() {
    print("Brand is : $brand");
    print("Year is: $year");
  }
}

void main() {
  Car c2 = Car("Toyota", 2020);
  c2.display();
}
