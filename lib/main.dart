import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: BallRoll(),
      ),
    ),
  );
}

class BallRoll extends StatefulWidget {
  @override
  _BallRollState createState() => _BallRollState();
}

class _BallRollState extends State<BallRoll> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
