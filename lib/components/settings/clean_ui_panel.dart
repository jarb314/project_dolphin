import 'package:flutter/material.dart';
import 'package:project_dolphin/components/settings/setting_switch_row.dart';

import '../../constants.dart';
import '../base/raise_container.dart';

class CleanUIPanel extends StatefulWidget {
  @override
  _CleanUIPanelState createState() => _CleanUIPanelState();
}

class _CleanUIPanelState extends State<CleanUIPanel> {
  bool isCleanUI;

  @override
  void initState() {
    // TODO: Get data from db
    isCleanUI = false; // Dummy data
    super.initState();
  }

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
            'CLEAN UI',
            style: kSubtitleTextStyle,
          ),
          SettingSwitchRow(
            value: isCleanUI,
            title: 'HIDE THE EXTRA INFO ON THE HOME SCREEN',
            onChanged: (newValue) {
              setState(() {
                isCleanUI = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
