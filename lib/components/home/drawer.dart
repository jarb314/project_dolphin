import 'package:feather_icons_flutter/feather_icons_flutter.dart';
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
          icon: FeatherIcons.clock, // TODO: set project icon
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
          icon: FeatherIcons.target,
          onTap: () {
            Navigator.pushNamed(context, '/goal');
            reset();
          },
        ),
        IconCircularButton(
          padding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 8.0,
          ),
          icon: FeatherIcons.settings,
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
          icon: FeatherIcons.info,
          onTap: () {
            Navigator.pushNamed(context, '/about');
            reset();
          },
        ),
      ],
    );
  }
}
