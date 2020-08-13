import 'package:flutter/material.dart';

import 'colors.dart';

enum DividerType {
  regular,
  medium,
  bold,
}

const DividerHeight = {
  [DividerType.regular]: 10.0,
  [DividerType.medium]: 10.0,
  [DividerType.bold]: 20.0,
};

const DividerThickness = {
  [DividerType.regular]: 1.0,
  [DividerType.medium]: 2.0,
  [DividerType.bold]: 7.0,
};

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
