import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SettingSwitchRow extends StatelessWidget {
  SettingSwitchRow(
      {@required this.title, @required this.value, @required this.onChanged});

  final String title;
  final bool value;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              this.title ?? 'missing',
              style: kTitleTextStyle,
              softWrap: true,
            ),
          ),
          CupertinoSwitch(
            value: this.value,
            activeColor: kPrimaryPurpleColor,
            onChanged: this.onChanged,
          )
        ],
      ),
    );
  }
}
