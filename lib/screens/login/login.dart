import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  click(context);
                },
                child: Text("Navigate to home")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "register");
                },
                child: Text("Sign Up"))
          ],
        ),
      ),
    );
  }

  click(BuildContext context) {
    Navigator.pushReplacementNamed(context, "home");
  }
}
