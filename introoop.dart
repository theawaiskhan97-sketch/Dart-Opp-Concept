class Student {
  String name;
  int age;
  String city;
  // constructor
  Student(this.name, this.age, this.city);
  void display() {
    print("Name is : $name");
    print("Age is: $age");
    print("City is: $city");
  }
}

void main() {
  Student s1 = Student("Ali", 20, "Karachi");
  s1.display();
}
