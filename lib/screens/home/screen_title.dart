import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  String title;

  ScreenTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          color: Color.fromRGBO(99, 32, 137, 1),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: Colors.white),
          )),
    );
  }
}
