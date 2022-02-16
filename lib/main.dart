import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: const Center(
            child: Text(
              'Ask Me Anything',
            ),
          ),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();

}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  void changeBallImage() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          changeBallImage();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
