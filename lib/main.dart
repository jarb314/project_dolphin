import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:project_dolphin/screens/about_screen.dart';
import 'package:project_dolphin/screens/alarms_screen.dart';
import 'package:project_dolphin/screens/goal_screen.dart';
import 'package:project_dolphin/screens/home_screen.dart';
import 'package:project_dolphin/screens/settings_screen.dart';

import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarWhiteForeground(false);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Habbit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: kLightColor,
        fontFamily: 'SF-Pro-Rounded',
      ),
      routes: {
        '/': (context) => HomeScreen(),
        '/alarms': (context) => AlarmsScreen(),
        '/goal': (context) => GoalScren(),
        '/settings': (context) => SettingsScreen(),
        '/about': (context) => AboutScreen(),
      },
      initialRoute: '/',
    );
  }
}
