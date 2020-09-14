import 'package:flutter/material.dart';

import '../../constants.dart';

class DateDisplay extends StatelessWidget {
  DateDisplay({this.date});

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 40.0),
          Text(
            date == null ? '0' : '${date.day}',
            style: kBodyTextStyle.copyWith(
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            date == null ? 'mis' : getDay(date.weekday),
            style: kSubtitleTextStyle,
          )
        ],
      ),
    );
  }

  String getDay(int weekday) {
    switch (weekday) {
      case 1:
        return 'SUN';
        break;
      case 2:
        return 'MON';
        break;
      case 3:
        return 'TUE';
        break;
      case 4:
        return 'WED';
        break;
      case 5:
        return 'THU';
        break;
      case 6:
        return 'FRI';
        break;
      case 7:
        return 'SAT';
        break;
      default:
        return '';
        break;
    }
  }
}
