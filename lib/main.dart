import 'package:firsti_project_c9/screens/calculator/calculator.dart';
import 'package:firsti_project_c9/screens/game_board/splash.dart';
import 'package:firsti_project_c9/screens/game_board/xo_screen.dart';
import 'package:firsti_project_c9/screens/home/home_screen.dart';
import 'package:firsti_project_c9/screens/login/login.dart';
import 'package:firsti_project_c9/screens/register/register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "home": (context) {
          return HomeScreen();
        },
        "login": (_) => LoginScreen(),
        "register": (_) => RegisterScreen(),
        Calculator.routeName: (_) => Calculator(),
        XoScreen.routeName: (_) => XoScreen(),
        SplashScreen.routeName: (_) => SplashScreen()
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
