import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Image(
            width: 200.0,
            image: AssetImage(
              'images/dice1.png',
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Image(
            width: 200.0,
            image: AssetImage(
              'images/dice1.png',
            ),
          ),
        )
      ],
    );
  }
}
