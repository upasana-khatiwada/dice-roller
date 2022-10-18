import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice App",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber=1 ;



  changeDice()
  {
    setState(() {
      diceNumber =Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: Image.asset(
              'assets/$diceNumber.jpg',
              height: 250,
              width: 250,
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: changeDice,
            child: const Text("Roll", style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 100),
          const Text(
            "flutterWithFun",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
