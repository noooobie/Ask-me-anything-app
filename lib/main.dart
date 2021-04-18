import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black12,
          appBar: AppBar(
            backgroundColor: Colors.white10,
            title: Center(child: Text('Ask Me Anything')),
          ),
          body: PoolBall(),
        ),
      ),
    );

class PoolBall extends StatefulWidget {
  @override
  _PoolBallState createState() => _PoolBallState();
}

class _PoolBallState extends State<PoolBall> {
  int numb = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  numb = Random().nextInt(5) + 1;
                  print('clicked');
                });
              },
              child: Image(
                width: 370,
                image: AssetImage('images/ball$numb.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
