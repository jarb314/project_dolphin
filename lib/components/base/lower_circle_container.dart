import 'package:flutter/material.dart';

import '../../constants.dart';

class LowerCircleContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(200.0),
      child: Container(
        height: 318,
        width: 318,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: -13,
              blurRadius: 13,
              offset: Offset(-10, -10), // changes position of shadow
            ),
            BoxShadow(
              color: Colors.white.withOpacity(0.9),
              spreadRadius: -10,
              blurRadius: 13,
              offset: Offset(10, 10), // changes position of shadow
            ),
            BoxShadow(
              color: kLightColor.withOpacity(0.9),
              spreadRadius: -30,
              blurRadius: 60,
//              offset: Offset(-10, -10),
            ),
          ],
        ),
      ),
    );
  }
}
