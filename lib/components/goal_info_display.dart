import 'package:flutter/material.dart';
import '../constants.dart';
import 'base/raise_container.dart';

class GoalInfoDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: RaisedContainer(
        height: 120.0,
        width: 150.0,
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ProgressBarIndicator(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'TIME GOAL',
                  style: kSubtitleTextStyle,
                ),
                Text(
                  '1 MONTH',
                  style: kHeaderTextStyle.copyWith(
                    fontSize: 22,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProgressBarIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 15.0,
              decoration: BoxDecoration(
                color: kPrimaryPurpleColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Container(
              height: 15.0,
              width: 60.0,
              decoration: BoxDecoration(
                color: kPrimaryPurpleColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
            )
          ],
        ),
        SizedBox(height: 5.0),
        Text(
          '23%',
          style: kTitleTextStyle.copyWith(
            color: kPrimaryPurpleColor,
          ),
        ),
      ],
    );
  }
}
