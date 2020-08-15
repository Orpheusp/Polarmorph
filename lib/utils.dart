import 'package:flutter/material.dart';

import 'colors.dart';
import 'constants.dart';

Divider getDivider(DividerType type) {
  return Divider(
    color: PolarmorphColor.black,
    height: DividerHeight[type],
    thickness: DividerThickness[type],
  );
}

List<Widget> divideWidgets(
  List<Widget> widgets,
  DividerType dividerType, {
  bool shouldInsertHead = false,
  bool shouldInsertTail = false,
}) {
  List<Widget> dividedWidgets = [];

  for (var i = 0; i < widgets.length; i++) {
    if (i == 0 && shouldInsertHead) {
      dividedWidgets.add(getDivider(dividerType));
    }

    dividedWidgets.add(widgets[i]);

    final isLastRow = i == widgets.length - 1;
    if ((isLastRow && shouldInsertTail) || !isLastRow) {
      dividedWidgets.add(getDivider(dividerType));
    }
  }

  return dividedWidgets;
}

bool shouldSplitScreen(BuildContext context) {
  final mediaQuery = MediaQuery.of(context);
  return mediaQuery.size.width > 480;
}

bool shouldFurtherSplitScreen(BuildContext context) {
  final mediaQuery = MediaQuery.of(context);
  return mediaQuery.size.width > 840;
}
