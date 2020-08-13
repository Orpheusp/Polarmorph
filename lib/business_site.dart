import 'package:flutter/material.dart';

import 'colors.dart';
import 'utils.dart';
import 'business_site_map.dart';

class BusinessSite extends StatelessWidget {
  final Map<String, String> _site;

  static const _SITE_KEY = 'site';
  static const _ADDRESS_KEY = 'address';
  static const _PHONE_KEY = 'phone';
  static const _EMAIL_KEY = 'email';

  BusinessSite(this._site, {Key key}) : super(key: key);

  Row _getDetailRow(String section, String detail, TextStyle style) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          section,
          style: style,
          textAlign: TextAlign.left,
        ),
        Expanded(child: Container()),
        Text(
          detail,
          style: style,
          textAlign: TextAlign.right,
        ),
      ],
    );
  }

  List<Widget> _getDetailRows(TextStyle style) {
    List<Widget> list = [];
    const order = [_ADDRESS_KEY, _PHONE_KEY, _EMAIL_KEY];

    order.forEach((element) {
      list.add(this._getDetailRow(
        element,
        this._site[element],
        style,
      ));
    });

    return list;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> detailRows =
        this._getDetailRows(Theme.of(context).textTheme.bodyText1);

    List<Widget> children = [
      Text(
        this._site[_SITE_KEY].toUpperCase(),
        style: Theme.of(context).textTheme.headline5,
      ),
      getDivider(DividerType.medium),
      ...divideWidgets(detailRows, DividerType.regular),
      BusinessSiteMap(this._site[_ADDRESS_KEY]),
      Container(height: 20),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
