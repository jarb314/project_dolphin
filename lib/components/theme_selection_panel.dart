import 'package:flutter/material.dart';
import 'package:project_dolphin/components/theme_selection_button.dart';

class ThemeSelectionPanel extends StatefulWidget {
  @override
  _ThemeSelectionPanelState createState() => _ThemeSelectionPanelState();
}

class _ThemeSelectionPanelState extends State<ThemeSelectionPanel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ThemeSelectionButton(
            isActive: true,
            buttonType: ButtonType.light,
          ),
          ThemeSelectionButton(
            isActive: false,
            buttonType: ButtonType.dark,
          ),
          ThemeSelectionButton(
            isActive: false,
            buttonType: ButtonType.auto,
          ),
        ],
      ),
    );
  }
}
