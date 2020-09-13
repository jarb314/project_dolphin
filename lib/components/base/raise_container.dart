import 'package:flutter/material.dart';

import '../../constants.dart';

class RaisedContainer extends StatelessWidget {
  RaisedContainer({
    this.child,
    this.width,
    this.height,
    this.padding,
    this.margin,
  });

  final Widget child;
  final double height;
  final double width;
  final EdgeInsets padding;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: this.child,
      padding: this.padding,
      margin: this.margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: kLightColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(5, 5), // changes position of shadow
          ),
          BoxShadow(
            color: Colors.white.withOpacity(0.87),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(-5, -5), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
