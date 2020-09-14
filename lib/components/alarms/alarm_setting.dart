import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../base/raise_container.dart';

class AlarmSetting extends StatelessWidget {
  AlarmSetting({
    @required this.value,
    @required this.onChanged,
    this.isGoal = false,
  });

  final bool value;
  final Function onChanged;
  final bool isGoal;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 25.0, 40.0, 0),
      child: RaisedContainer(
        height: 80.0,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '8.30 AM',
                style: kBodyTextStyle,
              ),
              isGoal
                  ? Text(
                      'GOAL',
                      style: kTitleTextStyle.copyWith(
                        color: kPrimaryPurpleColor,
                      ),
                    )
                  : CupertinoSwitch(
                      value: value,
                      onChanged: onChanged,
                      activeColor: kPrimaryPurpleColor,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
