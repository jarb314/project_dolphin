import 'dart:async';

import 'package:flutter/material.dart';

class DigitalClock extends StatefulWidget {
  @override
  _DigitalClockState createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
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

  String setHour() {
    int hour = dateTime.hour;
    int minute = dateTime.minute;

    if (hour == 0) {
      hour = 24;
    }

    if (hour >= 10 && minute < 10) {
      return '$hour.0$minute';
    } else if (hour < 10 && minute >= 10) {
      return '0$hour.$minute';
    } else if (hour < 10 && minute < 10) {
      return '0$hour.0$minute';
    } else {
      return '$hour.$minute';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            setHour(),
            style: TextStyle(fontSize: 75.0),
          ),
        ],
      ),
    );
  }
}
