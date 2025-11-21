import 'person.dart';
import 'subjects.dart';

class Student extends Person {
  Map<Subject, double> marks = {};

  Student(super.fullName, super.age, super.isMarried);

  void showMarks() {
    print("\nStudent: $fullName");
    for (var entry in marks.entries) {
      print("${entry.key}: ${entry.value}");
    }
  }

  double calculateAverage() {
    double sum = 0;
    for (var score in marks.values) {
      sum += score;
    }
    return marks.isEmpty ? 0 : sum / marks.length;
  }

  @override
  void introduce() {
    print("Hi! My name is $fullName. I am $age years old. Married: ${isMarried ? 'Yes' : 'No'}.");
    print("Average mark: ${calculateAverage()}");
  }
}
