import 'package:flutter/material.dart';

import 'polarmorph_icon.dart';
import 'colors.dart';

class BusinessEvent extends StatelessWidget {
  static const EVENTS = [
    'Daily Special Coffee Beverage Menu Hand-Picked by Baristas',
    'Weekly Polaroid Photography Exhibitions by Emerging Photographers',
    'Monthly Instant Photography Speaker Series and Q&A with Renown Artists',
    'More...',
  ];

  InlineSpan _getEndingLogoWidgetSpan(double fontSize) {
    return WidgetSpan(
      child: Container(
        padding: EdgeInsets.only(left: 5),
        child: Icon(
          PolarmorphIcon.logo,
          color: PolarmorphColor.red,
          size: fontSize,
        ),
      ),
      alignment: PlaceholderAlignment.middle,
    );
  }

  Widget _getDivider() {
    return Divider(
      color: PolarmorphColor.black,
      height: 10,
      thickness: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    final fontStyle = Theme.of(context).textTheme.bodyText1;

    for (var i = 0; i < EVENTS.length; i++) {
      final isLastRow = i == EVENTS.length - 1;

      children.add(
        RichText(
          text: TextSpan(
            text: EVENTS[i],
            style: fontStyle,
            children: isLastRow
                ? []
                : [this._getEndingLogoWidgetSpan(fontStyle.fontSize)],
          ),
        ),
      );

      if (!isLastRow) {
        children.add(this._getDivider());
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
