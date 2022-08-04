import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF821AD),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 2, rightDiceNumber = 1;
  void getDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      print('Dice number rightDiceNumber:   $rightDiceNumber');
      print('Dice number leftDiceNumber:   $leftDiceNumber');
    });
  }

  // Widget createDice({
  //   String DiceName1 = "",
  //   Function() getDiceNumber,
  // }) {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                getDiceNumber();
              },
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
                cacheHeight: 100,
                cacheWidth: 100,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                getDiceNumber();
              },
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
                cacheHeight: 100,
                cacheWidth: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
