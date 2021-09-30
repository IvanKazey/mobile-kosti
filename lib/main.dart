import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Flutter-App"),
        centerTitle: true,
      ),
      body: Dices(),
    ),
  ));
}

class Dices extends StatefulWidget {
  const Dices({Key? key}) : super(key: key);
  @override
  randKosti createState() => randKosti();
}

class randKosti extends State<Dices> {
  int first = Random().nextInt(6) + 1;
  int second = Random().nextInt(6) + 1;
  void game() {
    setState(() {
      first = Random().nextInt(6) + 1;
      second = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                MaterialButton(
                  child: Image.asset('images/${first}.png', height: 150, width: 150),
                  onPressed: () {game();},
                ),
              ],
            ),
            Column(
              children: [
                MaterialButton(
                  child: Image.asset('images/${second}.png', height: 150, width: 150),
                  onPressed: () {game();},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
