import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'business_site_map.dart';
import 'constants.dart';
import 'theme.dart';
import 'utils.dart';

class BusinessSite extends StatelessWidget {
  final Map<BusinessSiteKey, dynamic> _site;

  BusinessSite(this._site, {Key key}) : super(key: key);

  Row _getDetailRow(BusinessSiteKey key, String detail, TextStyle style) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          describeEnum(key),
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
    const order = [
      BusinessSiteKey.address,
      BusinessSiteKey.phone,
      BusinessSiteKey.email,
    ];

    order.forEach((element) {
      list.add(this._getDetailRow(element, this._site[element], style));
    });

    return list;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> detailRows =
        this._getDetailRows(getTextStyle(context, PolarmorphTextType.body));

    List<Widget> children = [
      Text(
        this._site[BusinessSiteKey.site].toUpperCase(),
        style: getTextStyle(context, PolarmorphTextType.headlineSmall),
      ),
      getDivider(DividerType.medium),
      ...divideWidgets(detailRows, DividerType.regular),
      BusinessSiteMap(
        this._site[BusinessSiteKey.site],
        this._site[BusinessSiteKey.location],
      ),
      Container(height: 20),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
