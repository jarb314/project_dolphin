import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:project_dolphin/components/base/icon_circular_button.dart';
import 'package:project_dolphin/components/base/raise_container.dart';
import 'package:project_dolphin/constants.dart';

class GoalSettingPanel extends StatelessWidget {
  const GoalSettingPanel({
    @required this.title,
    @required this.content,
    this.onTap,
  });

  final String title;
  final String content;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: RaisedContainer(
        height: 100.0,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.title ?? 'missing',
                    style: kSubtitleTextStyle,
                  ),
                  Text(
                    this.content ?? 'missing',
                    style: kBodyTextStyle,
                  ),
                ],
              ),
              IconCircularButton(
                icon: FeatherIcons.edit2,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
