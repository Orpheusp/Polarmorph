import 'package:flutter/material.dart';

import 'business_site.dart';

class BusinessSiteGroup extends StatelessWidget {
  final List<Map<String, String>> _sites;

  BusinessSiteGroup(this._sites, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    this._sites.forEach((Map<String, String> site) {
      children.add(BusinessSite(site));
    });

    return Column(children: children);
  }
}
