import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String userInput = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Input Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  userInput = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter your input',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Save the user input
                saveUserInput(userInput);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  void saveUserInput(String input) {
    // Add your code to save the user input to a database or perform any other desired action
    print('User input saved: $input');
  }
}
