import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register screen"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "home");
              },
              child: Text("Navigate to home")),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back to login"))
        ],
      ),
    );
  }
}
