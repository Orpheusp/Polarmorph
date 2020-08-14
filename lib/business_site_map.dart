import 'package:flutter/material.dart';

import 'colors.dart';
import 'theme.dart';

class BusinessSiteMap extends StatelessWidget {
  final String _address;

  BusinessSiteMap(this._address, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      alignment: AlignmentDirectional(0.0, 0.0),
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      child: Text(
        this._address,
        style: getTextStyle(context, PolarmorphTextType.headlineSmall),
        textAlign: TextAlign.center,
      ),
      decoration:
          BoxDecoration(border: Border.all(color: PolarmorphColor.black)),
    );
  }
}
