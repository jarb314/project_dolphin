import 'package:flutter/material.dart';
import 'package:project_dolphin/components/home/goal_info_display.dart';
import 'package:project_dolphin/constants.dart';

class GoalProgressInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'YOUR PROGRESS',
            style: kTitleTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'WAKE UP TIME',
                      style: kSubtitleTextStyle,
                    ),
                    Text(
                      '7.00 AM',
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
                SizedBox(width: 40.0),
                Expanded(child: ProgressBarIndicator()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
