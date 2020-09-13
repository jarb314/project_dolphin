import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'base/raised_circular_button.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({this.reset});

  final Function reset;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedCircularButton(
          padding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 8.0,
          ),
          child: Icon(
            Icons.alarm,
            color: kPrimaryPurpleColor,
            size: 30.0,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/alarms');
            reset();
          },
        ),
        RaisedCircularButton(
          padding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 8.0,
          ),
          onTap: () {
            // Navigator code...
            //reset();
          },
        ),
        RaisedCircularButton(
          padding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 8.0,
          ),
          child: Icon(
            CupertinoIcons.gear_solid,
            color: kPrimaryPurpleColor,
            size: 30.0,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/settings');
            reset();
          },
        ),
        RaisedCircularButton(
          padding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 8.0,
          ),
          child: Icon(
            Icons.info,
            color: kPrimaryPurpleColor,
            size: 30.0,
          ),
          onTap: () {
            // Navigator code...
            //reset();
          },
        ),
      ],
    );
  }
}
