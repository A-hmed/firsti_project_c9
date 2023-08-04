import 'package:firsti_project_c9/screens/home/magazine_dm.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<MagazineDM> magazines = [
    MagazineDM(imagePath: "assets/images/car.jpg", title: "car"),
    MagazineDM(imagePath: "assets/images/car.jpg", title: "health"),
    MagazineDM(imagePath: "assets/images/car.jpg", title: "X"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First app",
            style: TextStyle(color: Colors.white, fontSize: 24)),
        centerTitle: true,
      ),
      body: Column(
        children: magazines.map((magazine) {
          return buildMagazineStack(magazine.imagePath, magazine.title);
        }).toList(),
      ),
    );
  }

  Widget myItemBuilder(BuildContext context, int index) {
    print("my item builder $index");
    return buildMagazineStack(
        magazines[index].imagePath, magazines[index].title);
  }

  Widget buildMagazineStack(String imagePath, String title) {
    return Stack(alignment: Alignment.bottomRight, children: [
      Image.asset(
        imagePath,
      ),
      Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8),
          color: Color.fromRGBO(99, 32, 137, .5),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 24),
          ))
    ]);
  }
}
