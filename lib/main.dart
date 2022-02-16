import 'dart:math';

import 'package:flutter/material.dart';

void main() =>
    runApp(
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
  bool selected = false;
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
          ballNumber = Random().nextInt(5) + 1;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 400.0 : 200.0,
          height: selected ? 400.0 : 200.0,
          color: selected ? Colors.blue : Colors.blue,
          alignment:
          selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
