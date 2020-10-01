import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class MyAppbar extends StatelessWidget {
  MyAppbar({@required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          icon: Icon(
            FeatherIcons.arrowLeft,
            size: 30.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: Text(
            title ?? 'missing',
            style: kHeaderTextStyle,
          ),
        ),
      ],
    );
  }
}
