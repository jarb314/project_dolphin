import 'package:flutter/material.dart';
import 'package:project_dolphin/components/base/raise_circle_container.dart';

class RaisedCircularButton extends StatefulWidget {
  RaisedCircularButton({
    this.child,
    this.onTap,
    this.padding,
    this.radius = 50.0,
  });

  final Widget child;
  final Function onTap;
  final EdgeInsets padding;
  final double radius;

  @override
  _RaisedCircularButtonState createState() => _RaisedCircularButtonState();
}

class _RaisedCircularButtonState extends State<RaisedCircularButton> {
  double shadow = 5.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.all(8.0),
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
          children: <Widget>[
            RaiseCircleContainer(
              shadowOffset: shadow,
              radius: widget.radius,
              child: widget.child,
            ),
          ],
        ),
      ),
    );
  }
}
