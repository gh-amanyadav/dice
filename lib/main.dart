import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Center(
          child: Text('Dicee'),
        ),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void diceNumChange() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          heightFactor: 3,
          child: Row(
            children: <Widget>[
              SizedBox(width: 20,),
              Expanded(
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
              SizedBox(width: 20,),
              Expanded(
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
              SizedBox(width: 20,),
            ],
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                diceNumChange();
              });
            },
            child: Text('Press'),
          ),
        )
      ],
    );
  }
}
