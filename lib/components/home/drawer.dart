import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../base/icon_circular_button.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({this.reset});

  final Function reset;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconCircularButton(
          padding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 8.0,
          ),
          icon: Icons.alarm,
          onTap: () {
            Navigator.pushNamed(context, '/alarms');
            reset();
          },
        ),
        IconCircularButton(
          padding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 8.0,
          ),
          onTap: () {
            // Navigator code...
            //reset();
          },
        ),
        IconCircularButton(
          padding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 8.0,
          ),
          icon: CupertinoIcons.gear_solid,
          onTap: () {
            Navigator.pushNamed(context, '/settings');
            reset();
          },
        ),
        IconCircularButton(
          padding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 8.0,
          ),
          icon: Icons.info,
          onTap: () {
            // Navigator code...
            //reset();
          },
        ),
      ],
    );
  }
}
