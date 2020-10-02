import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_dolphin/components/base/appbar.dart';
import 'package:project_dolphin/components/base/raise_container.dart';
import 'package:project_dolphin/components/goal/goal_setting_panel.dart';
import 'package:project_dolphin/components/goal/goal_progress_info.dart';
import 'package:project_dolphin/components/goal/goal_title_info.dart';
import 'package:project_dolphin/constants.dart';

class GoalScren extends StatefulWidget {
  @override
  _GoalScrenState createState() => _GoalScrenState();
}

class _GoalScrenState extends State<GoalScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            MyAppbar(
              title: 'WAKE UP',
            ),
            Flexible(
              child: ListView(
                children: [
                  SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        GoalTitleInfo(),
                        GoalSettingPanel(
                          title: 'GOAL',
                          content: '7.00 AM',
                        ),
                        GoalSettingPanel(
                          title: 'CURRENT WAKE UP TIME',
                          content: '8.00 AM',
                        ),
                        GoalSettingPanel(
                          title: 'IN HOW MUCH TIME',
                          content: '1 MONTH',
                        ),
                        GoalProgressInfo(),
                        ResetButton(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResetButton extends StatelessWidget {
  // TODO: add tap capability
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, bottom: 20.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: RaisedContainer(
          height: 60.0,
          width: 133.0,
          borderRadius: 30.0,
          child: Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: kPrimaryPurpleColor,
              borderRadius: BorderRadius.circular(30.0),
              // border: Border.all(color: kLightColor, width: 10.0),
            ),
            child: Center(
              child: Text(
                'RESET',
                style: kTitleTextStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
