class Student {
  String name;

  Student(this.name);

  Student.guest() : name = "Guest";
}

void main() {
  Student s1 = Student("Awais");
  Student s2 = Student.guest();

  print(s1.name);
  print(s2.name);
}
