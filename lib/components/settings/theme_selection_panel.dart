import 'package:flutter/material.dart';
import 'package:project_dolphin/components/settings/theme_selection_button.dart';

class ThemeSelectionPanel extends StatefulWidget {
  @override
  _ThemeSelectionPanelState createState() => _ThemeSelectionPanelState();
}

class _ThemeSelectionPanelState extends State<ThemeSelectionPanel> {
  // TODO: Implement method to switch the state of the button;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
