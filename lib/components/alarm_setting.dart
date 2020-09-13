import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'base/raise_container.dart';

class AlarmSetting extends StatefulWidget {
  AlarmSetting({@required this.value, @required this.onChanged});

  final bool value;
  final Function onChanged;

  @override
  _AlarmSettingState createState() => _AlarmSettingState();
}

class _AlarmSettingState extends State<AlarmSetting> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 0),
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
              CupertinoSwitch(
                value: widget.value,
                onChanged: (bool newValue) {
                  setState(() {
                    // return the new value;
                    widget.onChanged();
                  });
                },
                activeColor: kPrimaryPurpleColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
