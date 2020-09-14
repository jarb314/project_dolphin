import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_dolphin/components/base/appbar.dart';
import 'package:project_dolphin/components/settings/clean_ui_panel.dart';
import 'package:project_dolphin/components/settings/clock_setting_panel.dart';
import 'package:project_dolphin/components/settings/theme_selection_panel.dart';
import 'package:project_dolphin/components/settings/time_format_panel.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyAppbar(title: 'SETTINGS'),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 40.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        TimeFormatPanel(),
                        CleanUIPanel(),
                        ClockSettingPanel(),
                      ],
                    ),
                    ThemeSelectionPanel(),
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
