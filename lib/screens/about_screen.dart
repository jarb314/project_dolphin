import 'package:flutter/material.dart';
import 'package:project_dolphin/components/base/appbar.dart';
import 'package:project_dolphin/jarbis_icons_icons.dart';

import '../constants.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyAppbar(
              title: 'ABOUT',
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Hi, I hope you are doing well. ',
                                  style: kTitleTextStyle.copyWith(
                                    fontSize: 24,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Habbit',
                                  style: kTitleTextStyle.copyWith(
                                    fontSize: 24,
                                    color: kPrimaryPurpleColor,
                                  ),
                                ),
                                TextSpan(
                                  text: ' is an app '
                                      'developed to help you wake up earlier and develop a habit,'
                                      ' that way you can have a more productive day.\n\n'
                                      'This app has help me a lot, and I hope that it can help you '
                                      'too.',
                                  style: kTitleTextStyle.copyWith(
                                    fontSize: 24,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Text(
                            'Develop with Flutter',
                            style: kSubtitleTextStyle,
                            textAlign: TextAlign.right,
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Version 0.01f',
                            style: kSubtitleTextStyle,
                            textAlign: TextAlign.right,
                          )
                        ],
                      ),
                    ),
                    Icon(
                      JarbisIcons.copyright,
                      color: Color(0xFFFF3100),
                      size: 40.0,
                    ),
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
