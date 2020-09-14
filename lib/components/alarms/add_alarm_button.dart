import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AddAlarmButton extends StatelessWidget {
  const AddAlarmButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.2,
      child: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
        child: DottedBorder(
          borderType: BorderType.RRect,
          radius: Radius.circular(15.0),
          dashPattern: [14, 14],
          strokeWidth: 2,
          child: Container(
            height: 80.0,
            child: FlatButton(
              onPressed: () {},
              child: Center(
                child: Text(
                  'ADD ALARM',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
