import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange.shade200,
        appBar: AppBar(
          title: Text('Dices'),
          backgroundColor: Colors.orange.shade400,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftdicenumber = 2;
  int righttdicenumber = 4;
  void shuffle(){
    setState(() {
      leftdicenumber = Random().nextInt(6)+1;
      righttdicenumber= Random().nextInt(6)+1;
    });
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: FlatButton(
              onPressed: () {
                shuffle();
              },
              child: Image.asset('images/dice$leftdicenumber.png')),),
          Expanded(child: FlatButton(
              onPressed: () {
                shuffle();
              },
              child: Image.asset('images/dice$righttdicenumber.png')),),
        ],
      ),
    );
  }
}

