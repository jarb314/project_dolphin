import 'package:flutter/material.dart';

import '../../constants.dart';

class RaiseCircleContainer extends StatelessWidget {
  RaiseCircleContainer({this.child, this.radius = 50.0, this.shadowOffset = 5});

  final Widget child;
  final double radius;
  final double shadowOffset;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      child: child,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kLightColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(
              shadowOffset,
              shadowOffset,
            ), // changes position of shadow
          ),
          BoxShadow(
            color: Colors.white.withOpacity(0.87),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(
              -shadowOffset,
              -shadowOffset,
            ), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
