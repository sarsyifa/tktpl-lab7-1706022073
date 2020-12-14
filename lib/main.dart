import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(DiceRoll());
}

class DiceRoll extends StatefulWidget {
  @override
  _DiceRollState createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int nextDiceImg = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('Lab 7 - Dice Roller'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Expanded(
              flex: 1,
              child: Center(child: Image.asset('assets/dice/dice$nextDiceImg.png'),),
              ),
            Spacer(),
            RaisedButton(
              onPressed: () {
                setState(() {
                  nextDiceImg = Random().nextInt(6) + 1;
                });
              },
              child: Text('Roll the dice'),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}