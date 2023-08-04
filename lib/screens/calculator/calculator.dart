import 'package:flutter/material.dart';

import 'calculator_button.dart';

class Calculator extends StatefulWidget {
  static String routeName = "calc";

  @override
  State<StatefulWidget> createState() {
    return CalculatorState();
  }
}

class CalculatorState extends State<StatefulWidget> {
  String resultText = "";
  String lhs = "";
  String operator = "";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Center(
                  child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(8),
                      child: Text(
                        "$resultText",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )))),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("7", onDigitClick),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("8", onDigitClick),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("9", onDigitClick),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("+", onOperatorClick),
                SizedBox(
                  width: 4,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("4", onDigitClick),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("5", onDigitClick),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("6", onDigitClick),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("-", onOperatorClick),
                SizedBox(
                  width: 4,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("1", onDigitClick),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("2", onDigitClick),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("3", onDigitClick),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("X", onOperatorClick),
                SizedBox(
                  width: 4,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 4,
                ),
                CalculatorButton(".", onDigitClick),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("0", onDigitClick),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("=", onEqualClick),
                SizedBox(
                  width: 4,
                ),
                CalculatorButton("/", onOperatorClick),
                SizedBox(
                  width: 4,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
        ],
      ),
    );
  }

  void onDigitClick(String digit) {
    if (digit == "." && resultText.contains(".")) {
      return;
    }
    resultText += digit;
    setState(() {});
  }

  void onOperatorClick(String clickedOperator) {
    if (resultText.isEmpty) return;
    if (operator.isEmpty) {
      lhs = resultText;
      operator = clickedOperator;
      resultText = "";
    } else {
      lhs = calculate(lhs, operator, resultText);
      operator = clickedOperator;
      resultText = "";
    }
    print("lhs: $lhs, oldOperator: $operator");
    setState(() {});
  }

  void onEqualClick(String _) {
    resultText = calculate(lhs, operator, resultText);
    lhs = "";
    operator = "";
    setState(() {});
  }

  String calculate(String lhs, String operator, String rhs) {
    double newLhs = double.parse(lhs);
    double newRhs = double.parse(rhs);
    if (operator == "+") {
      return (newLhs + newRhs).toString();
    } else if (operator == "-") {
      return (newLhs - newRhs).toString();
    } else if (operator == "/") {
      return (newLhs / newRhs).toString();
    } else {
      return (newLhs * newRhs).toString();
    }
  }
}
