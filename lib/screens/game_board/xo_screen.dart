import 'package:firsti_project_c9/screens/game_board/splash.dart';
import 'package:firsti_project_c9/screens/game_board/xo_button.dart';
import 'package:flutter/material.dart';

//todo: asdkks
class XoScreen extends StatefulWidget {
  static String routeName = "xo screen";

  XoScreen({Key? key}) : super(key: key);

  @override
  State<XoScreen> createState() => _XoScreenState();
}

class _XoScreenState extends State<XoScreen> {
  List<String> board = ["", "", "", "", "", "", "", "", ""];
  int player1Score = 0;
  int player2Score = 0;
  String symbol = "";
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    XoArgs args = ModalRoute.of(context)!.settings.arguments as XoArgs;
    return Scaffold(
      appBar: AppBar(
        title: Text("Xo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "${args.player1}: $player1Score",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text("${args.player2}: $player2Score",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(board[0], board[0].isNotEmpty ? null : onClick, 0),
                XoButton(board[1], board[1].isNotEmpty ? null : onClick, 1),
                XoButton(board[2], board[2].isNotEmpty ? null : onClick, 2),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(board[3], board[3].isNotEmpty ? null : onClick, 3),
                XoButton(board[4], board[4].isNotEmpty ? null : onClick, 4),
                XoButton(board[5], board[5].isNotEmpty ? null : onClick, 5),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                XoButton(board[6], board[6].isNotEmpty ? null : onClick, 6),
                XoButton(board[7], board[7].isNotEmpty ? null : onClick, 7),
                XoButton(board[8], board[8].isNotEmpty ? null : onClick, 8),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onClick(int index) {
    var currentSymbol = counter % 2 == 0 ? "o" : "x";
    board[index] = currentSymbol;
    setState(() {});

    if (checkWinner(currentSymbol)) {
      if (currentSymbol == "x") {
        player2Score++;
      } else {
        player1Score++;
      }
      resetBoard();
      return;
    }

    if (counter == 8) {
      resetBoard();
      return;
    }
    counter++;
  }

  bool checkWinner(String symbol) {
    if (board[0] == symbol && board[1] == symbol && board[2] == symbol) {
      return true;
    }
    if (board[3] == symbol && board[4] == symbol && board[5] == symbol) {
      return true;
    }
    if (board[6] == symbol && board[7] == symbol && board[8] == symbol) {
      return true;
    }
    ////
    if (board[0] == symbol && board[3] == symbol && board[6] == symbol) {
      return true;
    }
    if (board[1] == symbol && board[4] == symbol && board[7] == symbol) {
      return true;
    }
    if (board[2] == symbol && board[5] == symbol && board[8] == symbol) {
      return true;
    }
    if (board[0] == symbol && board[4] == symbol && board[8] == symbol) {
      return true;
    }
    if (board[2] == symbol && board[4] == symbol && board[6] == symbol) {
      return true;
    }
    return false;
  }

  void resetBoard() {
    board = ["", "", "", "", "", "", "", "", ""];
    counter = 0;
    setState(() {});
  }
}
