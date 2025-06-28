import 'dart:math';

import 'package:flutter/material.dart';
class MyHomescreen extends StatefulWidget {
  const MyHomescreen({super.key});

  @override
  State<MyHomescreen> createState() => _MyHomescreenState();
}

class _MyHomescreenState extends State<MyHomescreen> {
  int leftDice=1;
  int rightDice=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        title: Text("Dice app", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                child: InkWell(
                  onTap: (){
                    setState(() {
                      leftDice=Random().nextInt(6)+1;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/dice$leftDice.png"),
                  ),
                )),
            Expanded(child: InkWell(
              onTap: (){
                setState(() {
                  rightDice=Random().nextInt(6)+1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/dice$rightDice.png"),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
