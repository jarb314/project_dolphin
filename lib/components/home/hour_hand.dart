import 'dart:math';
import 'package:flutter/material.dart';
import '../../constants.dart';

class HourHand extends StatelessWidget {
  HourHand({
    Key key,
    @required this.hours,
    @required this.minutes,
  }) : super(key: key);

  int hours;
  final int minutes;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: this.hours >= 12
          ? 2 * pi * ((this.hours - 12) / 12 + (this.minutes / 720))
          : 2 * pi * ((this.hours / 12) + (this.minutes / 720)),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 11.0,
              height: 64.0,
              decoration: BoxDecoration(
                color: kPrimaryPurpleColor,
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
            SizedBox(
              height: 140.0 - 25,
            ),
          ],
        ),
      ),
    );
  }
}
