import 'package:flutter/material.dart';
import '../constants.dart';
import 'base/raised_circular_button.dart';

class ThemeSelectionButton extends StatelessWidget {
  ThemeSelectionButton({
    @required this.buttonType,
    this.isActive = false,
    this.color,
    this.onTap,
    this.autoTheme = false,
  });

  final ButtonType buttonType;
  final bool isActive;
  final Color color;
  final Function onTap;
  final bool autoTheme;

  Widget setButtonColor() {
    if (buttonType == ButtonType.light) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: Container(
          color: kLightColor,
        ),
      );
    } else if (buttonType == ButtonType.dark) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: Container(
          color: kDarkColor,
        ),
      );
    } else if (buttonType == ButtonType.auto) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: kDarkColor,
              ),
            ),
            Expanded(
              child: Container(
                color: kLightColor,
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        color: Colors.deepOrange,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return RaisedCircularButton(
      radius: 60.0,
      child: Container(
        margin: EdgeInsets.all(7.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: this.color,
        ),
        child: Stack(
          children: <Widget>[
            setButtonColor(),
            Center(
              child: Icon(
                this.isActive ? Icons.check : null,
                color: kPrimaryPurpleColor,
              ),
            )
          ],
        ),
      ),
      onTap: this.onTap,
    );
  }
}

enum ButtonType {
  light,
  dark,
  auto,
}
