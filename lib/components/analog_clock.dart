import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_dolphin/components/seconds_hand.dart';

import 'base/lower_circle_container.dart';
import 'base/raise_circle_container.dart';
import 'hour_hand.dart';
import 'minutes_hand.dart';

class MyAnalogClock extends StatefulWidget {
  @override
  _MyAnalogClockState createState() => _MyAnalogClockState();
}

class _MyAnalogClockState extends State<MyAnalogClock> {
  Timer _timer;
  DateTime dateTime;
  @override
  void initState() {
    this._timer = new Timer.periodic(Duration(seconds: 1), setTime);
    dateTime = DateTime.now();
    super.initState();
  }

  void setTime(Timer timer) {
    setState(() {
      dateTime = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Stack(
          children: <Widget>[
            Center(
              child: LowerCircleContainer(),
            ),
            Center(
              child: RaiseCircleContainer(radius: 38),
            ),
            SecondsHand(seconds: dateTime.second),
            MinutesHand(minutes: dateTime.minute, seconds: dateTime.second),
            HourHand(hours: dateTime.hour, minutes: dateTime.minute),
          ],
        ),
      ),
    );
  }
}
