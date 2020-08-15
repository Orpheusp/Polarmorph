import 'package:flutter/material.dart';

import 'colors.dart';
import 'constants.dart';
import 'polarmorph_icon.dart';
import 'theme.dart';
import 'utils.dart';

class BusinessEvent extends StatelessWidget {
  final List<String> _events;

  BusinessEvent(this._events, {Key key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    final fontStyle = getTextStyle(context, PolarmorphTextType.body);

    for (var i = 0; i < this._events.length; i++) {
      final isLastRow = i == this._events.length - 1;
      final List<WidgetSpan> textSpanChildren =
          isLastRow ? [] : [this._getEndingLogoWidgetSpan(fontStyle.fontSize)];

      children.add(
        RichText(
          text: TextSpan(
            text: this._events[i],
            style: fontStyle,
            children: textSpanChildren,
          ),
        ),
      );
    }

    children = divideWidgets(children, DividerType.regular);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
