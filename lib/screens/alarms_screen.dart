import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_dolphin/components/alarm_setting.dart';
import 'package:project_dolphin/components/appbar.dart';
import 'package:project_dolphin/components/base/raised_circular_button.dart';

import '../constants.dart';

class AlarmsScreen extends StatelessWidget {
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
                  children: <Widget>[
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return AlarmSetting(
                          value: false,
                          onChanged: () {},
                        );
                      },
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40.0,
                          vertical: 0.0,
                        ),
                        child: RaisedCircularButton(
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryPurpleColor,
                            ),
                            child: Icon(
                              CupertinoIcons.add,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ),
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
