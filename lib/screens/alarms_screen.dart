import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_dolphin/components/alarms/add_alarm_button.dart';
import 'package:project_dolphin/components/alarms/alarm_setting.dart';
import 'package:project_dolphin/components/base/appbar.dart';
import 'package:project_dolphin/constants.dart';

class AlarmsScreen extends StatefulWidget {
  @override
  _AlarmsScreenState createState() => _AlarmsScreenState();
}

class _AlarmsScreenState extends State<AlarmsScreen> {
  List<bool> alarmStateList = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // appbar
            MyAppbar(title: 'ALARMS'),
            Flexible(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: alarmStateList.length,
                      itemBuilder: (context, index) {
                        return AlarmSetting(
                          isGoal: index == 0, // Set the first alarm to Goal
                          // (just for demo)
                          value: alarmStateList[index],
                          onChanged: (newValue) {
                            setState(() {
                              alarmStateList[index] = newValue;
                            });
                          },
                        );
                      },
                    ),
                    AddAlarmButton(),
                    SizedBox(height: 40.0),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
