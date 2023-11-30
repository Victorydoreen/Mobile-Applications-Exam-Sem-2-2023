// Importing the necessary packages
import 'package:flutter/material.dart';



class toggleButton extends StatelessWidget {
  bool showDetails = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            showDetails
                ? 'Student Details:\nJohn Doe\nAge: 20\nGrade: A'
                : 'Show Details',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Toggle the showDetails state when the button is pressed
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
  
  void setState(Null Function() param0) {}
}
