import 'package:flutter/material.dart';

class XoButton extends StatelessWidget {
  String symbol;
  Function? onClick;
  int index;

  XoButton(this.symbol, this.onClick, this.index);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(2),
      child: ElevatedButton(
          onPressed: onClick == null
              ? null
              : () {
                  onClick!(index);
                },
          child: Text(
            "$symbol",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )),
    ));
  }
}
