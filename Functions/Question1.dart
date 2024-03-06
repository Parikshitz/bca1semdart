import 'dart:io';

class MarksCalculator {
  List<String> subjects = [];
  List<int> marks = [];

  void inputSubjects() {
    print("Enter the names of five subjects:");
    for (var i = 0; i < 5; i++) {
      stdout.write("Subject name: ");
      var subject = stdin.readLineSync();
      if (subject != null &&
          subject.isNotEmpty &&
          !subject.contains(RegExp(r'[0-9]'))) {
        subjects.add(subject);
      } else {
        print(
            "Error: Please enter a valid subject name (only letters and spaces).");
        i--; 
      }
    }
  }

  void inputMarks() {
    print("Enter marks obtained in each subject:");
    for (var subject in subjects) {
      stdout.write("Marks obtained in $subject: ");
      var markInput = stdin.readLineSync();
      if (markInput != null &&
          markInput.isNotEmpty &&
          markInput.contains(RegExp(r'^[0-9]+$'))) {
        var mark = int.parse(markInput);
        marks.add(mark);
      } else {
        print("Error: Please enter a valid integer value for marks.");
        marks.clear(); 
        inputMarks(); 
        return;
      }
    }
  }

  void calculateTotalMarks() {
    var totalMarks = marks.reduce((value, element) => value + element);
    print("Total marks: $totalMarks");
  }
}

void main() {
  var marksCalculator = MarksCalculator();

  marksCalculator.inputSubjects();

  marksCalculator.inputMarks();

  marksCalculator.calculateTotalMarks();
}