import 'teacher.dart';
import 'student.dart';
import 'subjects.dart';

void main() {
  // --- Teacher ---
  Teacher teacher = Teacher("John Brown", 40, true, 10);

  print("\n--- Teacher Info ---");
  teacher.introduce();

  print("Calculated salary: ${teacher.calculateSalary()}");

  // --- Students ---
  Student st1 = Student("Adam White", 17, false);
  st1.marks = {
    Subject.math: 90,
    Subject.physics: 85,
    Subject.english: 92
  };

  Student st2 = Student("Sarah Cruz", 18, false);
  st2.marks = {
    Subject.math: 88,
    Subject.english: 94,
    Subject.history: 91,
    Subject.physics: 80
  };

  print("\n--- Student 1 ---");
  st1.introduce();
  st1.showMarks();
  print("Average: ${st1.calculateAverage()}");

  print("\n--- Student 2 ---");
  st2.introduce();
  st2.showMarks();
  print("Average: ${st2.calculateAverage()}");
}
