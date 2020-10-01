import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:project_dolphin/components/home/alarms_listview.dart';
import 'package:project_dolphin/components/home/analog_clock.dart';
import 'package:project_dolphin/components/base/icon_circular_button.dart';
import 'package:project_dolphin/components/home/date_display.dart';
import 'package:project_dolphin/components/home/digital_clock.dart';
import 'package:project_dolphin/components/home/drawer.dart';
import 'package:project_dolphin/components/home/goal_info_display.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:project_dolphin/jarbis_icons_icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  bool showMenu = false;

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    animation = Tween<double>(begin: 0, end: -150.0).animate(controller)
      ..addListener(() {
        setState(() {
          // hi
        });
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void resetHome() {
    controller.reverse();
    showMenu = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5.0, 15.0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    IconCircularButton(
                      icon:
                          showMenu ? FeatherIcons.arrowRight : JarbisIcons.menu,
                      onTap: () {
                        if (showMenu) {
                          controller.reverse();
                          showMenu = false;
                        } else {
                          controller.forward();
                          showMenu = true;
                        }
                      },
                    ),
                    showMenu
                        ? Expanded(
                            child: MyDrawer(
                              reset: this.resetHome,
                            ),
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(animation.value, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      DateDisplay(date: DateTime.now()),
                      MyAnalogClock(),
                      DigitalClock(),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 50.0,
                    ),
                    child: Container(
                      height: 130,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Flexible(
                            flex: 2,
                            child: AlarmsListView(),
                          ),
                          SizedBox(width: 30.0),
                          GoalInfoDisplay(),
                        ],
                      ),
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
