class Student {
  String name;
  int age;
  String city;
  String job;
  // constructor
  Student(this.name, this.age, this.city, this.job);
  void display() {
    print("Name is : $name");
    print("Age is: $age");
    print("City is: $city");
    print("Job Status: $job");
  }
}

void main() {
  Student s1 = Student("Ali", 20, "Karachi", "Engineer");
  s1.display();
}
