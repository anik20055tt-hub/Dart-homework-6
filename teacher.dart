import 'person.dart';

class Teacher extends Person {
  int experience;

  static double _baseSalary = 50000;

  Teacher(super.fullName, super.age, super.isMarried, this.experience);

  double calculateSalary() {
    double salary = _baseSalary;

    if (experience > 3) {
      for (int i = 4; i <= experience; i++) {
        salary *= 1.05; // +5% каждый год после 3-го
      }
    }

    if (isMarried) {
      salary += 5000;
    }

    return salary;
  }

  @override
  void introduce() {
    print("Hi! My name is $fullName. I am $age years old. Married: ${isMarried ? 'Yes' : 'No'}.");
    print("Experience: $experience years.");
    print("Salary: ${calculateSalary()}");
  }
}
