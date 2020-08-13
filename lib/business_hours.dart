import 'package:flutter/material.dart';
import 'colors.dart';

class BusinessHours extends StatelessWidget {
  static const _START_KEY = 'start';
  static const _END_KEY = 'end';

  final List<Map<String, String>> _details;

  BusinessHours(this._details, {Key key}) : super(key: key);

  Widget getBusinessHoursRow(Map<String, String> detail, TextStyle style) {
    final String start = detail[_START_KEY];
    final String end = detail[_END_KEY];
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
    final TextStyle style = Theme.of(context).textTheme.headline3;

    this._details.forEach((Map<String, String> detail) {
      children.add(this.getBusinessHoursRow(detail, style));
    });

    return Column(children: children);
  }
}
