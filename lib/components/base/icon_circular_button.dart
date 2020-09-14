import 'package:flutter/material.dart';
import 'package:project_dolphin/constants.dart';

class IconCircularButton extends StatefulWidget {
  IconCircularButton({
    this.icon,
    this.onTap,
    this.padding,
    this.color,
  });

  final IconData icon;
  final Function onTap;
  final EdgeInsets padding;
  final Color color;

  @override
  _IconCircularButtonState createState() => _IconCircularButtonState();
}

class _IconCircularButtonState extends State<IconCircularButton> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Container(
        height: 50.0,
        width: 50.0,
        child: FlatButton(
          padding: EdgeInsets.zero,
          onPressed: widget.onTap,
          child: Icon(
            widget.icon ?? Icons.error_outline,
            size: 30.0,
            color: widget.color ?? kPrimaryPurpleColor,
          ),
        ),
      ),
    );
  }
}
