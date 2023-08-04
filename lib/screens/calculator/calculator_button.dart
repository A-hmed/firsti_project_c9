import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  String digit;
  Function(String) onClick;

  CalculatorButton(this.digit, this.onClick);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TextButton(
            onPressed: () {
              onClick(digit);
            },
            child: Container(
              color: Colors.red,
              child: Text(
                "$digit",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            )));
  }
}
