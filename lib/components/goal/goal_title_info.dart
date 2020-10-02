import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class GoalTitleInfo extends StatelessWidget {
  const GoalTitleInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'I will help you wake up earlier'.toUpperCase(),
            style: kTitleTextStyle,
            softWrap: true,
          ),
        ),
        SizedBox(width: 20.0),
        CupertinoSwitch(
          value: true,
          activeColor: kPrimaryPurpleColor,
          onChanged: (bool value) {},
        ),
      ],
    );
  }
}
