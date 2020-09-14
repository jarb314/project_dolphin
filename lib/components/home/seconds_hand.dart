import 'dart:math';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SecondsHand extends StatelessWidget {
  SecondsHand({
    Key key,
    @required this.seconds,
  }) : super(key: key);

  final int seconds;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 2 * pi * this.seconds / 60,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 3.0,
              height: 130.0,
              decoration: BoxDecoration(
                color: kPrimaryPurpleColor,
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            SizedBox(
              height: 180.0,
            ),
          ],
        ),
      ),
    );
  }
}
