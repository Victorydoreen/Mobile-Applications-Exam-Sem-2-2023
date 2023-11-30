// Importing the necessary packages
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Screen'),
      ),
      body: Center(
        child: Text(
          'Name: Namyenya Doreen\nStudent No: 222039\nEmail: victorydoreen3@gmail.com',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 183, 108, 58)), // Set text color
        ),
      ),
    );
  }
}
