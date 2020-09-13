import 'package:flutter/material.dart';

import '../constants.dart';

class AlarmsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return AlarmDisplay(
                title: 'ALARM',
                date: '8.30 AM',
              );
            },
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          height: 5.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.0),
            color: kPrimaryPurpleColor,
          ),
        ),
      ],
    );
  }
}

class AlarmDisplay extends StatelessWidget {
  AlarmDisplay({@required this.title, @required this.date});

  final String title;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title ?? 'missing',
            style: kSubtitleTextStyle,
          ),
          Text(
            date ?? 'missing',
            style: kHeaderTextStyle,
          ),
        ],
      ),
    );
  }
}
