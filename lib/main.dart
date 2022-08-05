import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    DicePage(),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class CustomDice extends StatefulWidget {
  final diceNumber;

  CustomDice({this.diceNumber});

  @override
  State<CustomDice> createState() => _CustomDiceState();
}

class _CustomDiceState extends State<CustomDice> {
  var diceNumber = 4;

  /// Event Click Random DiceNumber
  void getDiceNumber() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
      print('Dice number DiceNumber:   $diceNumber');
    });
  }

  /// Dice button
  /// @param Dice Number
  /// @param Function()? getDiceNumber
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: TextButton(
        onPressed: () {
          getDiceNumber();
        },
        child: Image.asset(
          'images/dice$diceNumber.png',
        ),
      ),
    );
  }
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF821AD),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              CustomDice(
                diceNumber: 5,
              ),
              CustomDice(),
              CustomDice(),
              CustomDice(),
              CustomDice(),
            ],
          ),
        ),
      ),
    );
  }
}
