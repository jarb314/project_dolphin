import 'dart:math';

import 'package:flutter/material.dart';

class MinutesHand extends StatelessWidget {
  const MinutesHand({Key key, @required this.minutes, @required this.seconds})
      : super(key: key);

  final int minutes;
  final int seconds;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 2 * pi * ((this.minutes + (this.seconds / 60)) / 60),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 7.0,
              height: 93.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            SizedBox(
              height: 145.0,
            ),
          ],
        ),
      ),
    );
  }
}
