import 'package:flutter/material.dart';

import 'colors.dart';
import 'constants.dart';
import 'theme.dart';

class BusinessHours extends StatelessWidget {
  final List<Map<BusinessHourKey, String>> _details;

  BusinessHours(this._details, {Key key}) : super(key: key);

  Widget getBusinessHoursRow(
      Map<BusinessHourKey, String> detail, TextStyle style) {
    final String start = detail[BusinessHourKey.start];
    final String end = detail[BusinessHourKey.end];
    final row = Row(
      children: <Widget>[
        Text(start, style: style),
        Expanded(
          child: Divider(
            color: PolarmorphColor.black,
            height: style.height * style.fontSize,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
        ),
        Text(end, style: style),
      ],
    );

    return row;
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [];
    final style = getTextStyle(context, PolarmorphTextType.headlineMedium);

    this._details.forEach((Map<BusinessHourKey, String> detail) {
      children.add(this.getBusinessHoursRow(detail, style));
    });

    return Column(children: children);
  }
}
