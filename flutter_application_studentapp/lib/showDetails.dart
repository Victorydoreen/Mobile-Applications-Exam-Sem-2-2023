// Importing the necessary packages
import 'package:flutter/material.dart';
// // Task one

class showDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Student App', 
          style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),
          backgroundColor: const Color.fromARGB(255, 1, 92, 5),
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
  String displayText = 'Student Details';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            displayText,
            style: TextStyle(fontSize: 30,
            backgroundColor: const Color.fromARGB(255, 3, 109, 8),
            color: Colors.amber,
            ),
            
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              // Update the text when the button is pressed
              setState(() {
                displayText = 'Student details';
              });
            },
            child: Text('Show details'),
          ),

          
        ],
      ),
    );
  }
}