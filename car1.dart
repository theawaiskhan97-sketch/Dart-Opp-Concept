import 'dart:io';

// Car class (blueprint)
class Car {
  String brand;
  int year;

  // Constructor
  Car(this.brand, this.year);

  // This method checks if the car is old or new
  String checkCarStatus() {
    if (year < 2015) {
      return 'old';
    } else if (year >= 2026) {
      return 'new';
    } else {
      return 'in the middle range';
    }
  }

  // This method prints the car details
  void showInfo() {
    print('Car Brand: $brand');
    print('Car Year: $year');
    print('Car Status: ${checkCarStatus()}');
  }
}

void main() {
  print('Enter car brand: ');
  String brand = stdin.readLineSync() ?? '';

  print('Enter car year: ');
  int year = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  Car myCar = Car(brand, year);
  myCar.showInfo();
}
