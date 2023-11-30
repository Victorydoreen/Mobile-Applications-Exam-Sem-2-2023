// Importing the necessary packages
import 'package:flutter/material.dart';
import 'package:flutter_application_studentapp/showDetails.dart';
import 'package:flutter_application_studentapp/toggleButton.dart';
import 'package:flutter_application_studentapp/student.dart';
import 'package:flutter_application_studentapp/state-management.dart';
import 'package:flutter_application_studentapp/aboutScreen.dart';



void main() {
  runApp(MyApp());
}

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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyWidget(),
         '/about': (context) => AboutScreen(),
         '/showdetatils':(context) => showDetails()
      },

      // TASK 4.1 STYLING
      theme: ThemeData(
        backgroundColor: Colors.green,
        primarySwatch: Colors.pink, // Set the primary color
        buttonTheme: ButtonThemeData(
          buttonColor: Color.fromARGB(255, 230, 105, 151), // Set the button color
          textTheme: ButtonTextTheme.primary, // Set text color to be light
        ),
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
    student = Student(name: 'John Doe', age: 20, grade: 'A');
  }

// TASK 6 DATA HANDLING
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
            style: TextStyle(fontSize: 20, color: Colors.black), // Set text color
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 95, 92, 88), // Set button color
            ),
            child: Text(
              'About',
              style: TextStyle(fontSize: 18, color: Colors.white), // Set text color
            ),
          ),
        ],
      ),
    );
  }
}
