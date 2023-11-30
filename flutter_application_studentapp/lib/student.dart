// DATA HANDLING

// Importing the necessary packages
import 'package:flutter/material.dart';

//Below, the Student class has attributes name, age, and grade. 
//An instance of this class is created in the MyWidget state, 
//and the details of the student are displayed.

class Student {
  String name;
  int age;
  String grade;

  Student({
    required this.name,
    required this.age,
    required this.grade,
  });
}

class StudentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Student details'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late Student student;
  bool showDetails = false;

  @override
  void initState() {
    super.initState();
    // Initialize the student instance
    student = Student(name: 'John Doe', age: 20, grade: 'A');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            showDetails
                ? 'Student Details:\n${student.name}\nAge: ${student.age}\nGrade: ${student.grade}'
                : 'Show Details',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 25, width: 15),
          ElevatedButton(
            onPressed: () {
              //  Every time the button is pressed Toggle the showDetails state
              setState(() {
                showDetails = !showDetails;
              });
            },
            child: Text('Show Details'),
          ),
        ],
      ),
    );
  }
}




