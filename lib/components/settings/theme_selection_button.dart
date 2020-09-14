import 'package:flutter/material.dart';
import 'package:project_dolphin/components/base/raise_circle_container.dart';
import '../../constants.dart';
import '../base/icon_circular_button.dart';

class ThemeSelectionButton extends StatefulWidget {
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

  @override
  _ThemeSelectionButtonState createState() => _ThemeSelectionButtonState();
}

class _ThemeSelectionButtonState extends State<ThemeSelectionButton> {
  Widget setButtonColor() {
    if (widget.buttonType == ButtonType.light) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: Container(
          color: kLightColor,
        ),
      );
    } else if (widget.buttonType == ButtonType.dark) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: Container(
          color: kDarkColor,
        ),
      );
    } else if (widget.buttonType == ButtonType.auto) {
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

  var shadow = 5.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: GestureDetector(
        onTapDown: (TapDownDetails) {
          setState(() {
            shadow = 2.0;
          });
          widget.onTap();
        },
        onTapUp: (TapUpDetails) {
          setState(() {
            shadow = 5.0;
          });
        },
        child: Stack(
          children: [
            RaiseCircleContainer(
              radius: 60.0,
              shadowOffset: shadow,
              child: Container(
                margin: EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: this.widget.color,
                ),
                child: Stack(
                  children: <Widget>[
                    setButtonColor(),
                    Center(
                      child: Icon(
                        this.widget.isActive ? Icons.check : null,
                        color: kPrimaryPurpleColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum ButtonType {
  light,
  dark,
  auto,
}
