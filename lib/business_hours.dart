import 'package:flutter/material.dart';
import 'colors.dart';

class BusinessHours extends StatelessWidget {
  static const START_HOUR = '7AM';
  static const END_HOUR = '9PM';
  static const START_DAY = 'MON';
  static const END_DAY = 'SUN';

  Widget getBusinessHoursRow(BuildContext context, String begin, String end) {
    final textStyle = Theme.of(context).textTheme.headline3;
    final row = Row(
      children: <Widget>[
        Text(begin, style: textStyle),
        Expanded(
          child: Divider(
            color: PolarmorphColor.black,
            height: textStyle.height * textStyle.fontSize,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
        ),
        Text(end, style: textStyle),
      ],
    );

    return row;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        this.getBusinessHoursRow(context, START_HOUR, END_HOUR),
        this.getBusinessHoursRow(context, START_DAY, END_DAY),
      ],
    );
  }
}
