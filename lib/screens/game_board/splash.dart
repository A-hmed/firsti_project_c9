import 'package:firsti_project_c9/screens/game_board/xo_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "splash";
  String player1 = "";
  String player2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Player 1"),
            onChanged: (text) {
              player1 = text;
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: "Player 2"),
            onChanged: (text) {
              player2 = text;
            },
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, XoScreen.routeName,
                    arguments: XoArgs(player1, player2));
              },
              child: Text("Start"))
        ],
      ),
    );
  }
}

class XoArgs {
  String player1;
  String player2;

  XoArgs(this.player1, this.player2);
}
