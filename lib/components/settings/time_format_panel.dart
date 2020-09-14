import 'package:flutter/material.dart';
import 'package:project_dolphin/components/settings/setting_switch_row.dart';

import '../../constants.dart';
import '../base/raise_container.dart';

class TimeFormatPanel extends StatefulWidget {
  @override
  _TimeFormatPanelState createState() => _TimeFormatPanelState();
}

class _TimeFormatPanelState extends State<TimeFormatPanel> {
  bool format24;
  bool format12;

  @override
  void initState() {
    //TODO: get the time format setting from the DB
    // Dummy data;
    format24 = true;
    format12 = false;
    super.initState();
  }

  //TODO: make function to make the time format change

  @override
  Widget build(BuildContext context) {
    return RaisedContainer(
      margin: EdgeInsets.only(bottom: 30.0),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'TIME FORMAT',
            style: kSubtitleTextStyle,
          ),
          SettingSwitchRow(
            title: '24 HOURS',
            value: format24,
            onChanged: (newValue) {
              setState(() {
                if (newValue) {
                  format12 = false;
                  format24 = true;
                } else {
                  format12 = true;
                  format24 = false;
                }
              });
            },
          ),
          SettingSwitchRow(
            title: '12 HOURS',
            value: format12,
            onChanged: (newValue) {
              setState(() {
                if (!newValue) {
                  format12 = false;
                  format24 = true;
                } else {
                  format12 = true;
                  format24 = false;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
