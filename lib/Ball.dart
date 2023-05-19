import 'package:flutter/material.dart';
import 'dart:math';

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ball = 1;

  void throwBall(){
    ball = Random().nextInt(5) + 1;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                child: Image.asset('images/ball$ball.png'),
                onPressed: (){
                  throwBall();
                },
              ),
            ),
          ],
        ),
      );
  }
}