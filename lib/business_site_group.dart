import 'package:flutter/material.dart';

import 'business_site.dart';
import 'constants.dart';
import 'utils.dart';

class BusinessSiteGroup extends StatelessWidget {
  final List<Map<BusinessSiteKey, String>> _sites;

  BusinessSiteGroup(this._sites, {Key key}) : super(key: key);

  Widget _getSingleView() {
    final List<Widget> children = [];
    this._sites.forEach((site) {
      children.add(BusinessSite(site));
    });

    return Column(children: children);
  }

  Widget _getSplitView() {
    final List<Widget> left = [];
    final List<Widget> right = [];
    for (var i = 0; i < this._sites.length; i++) {
      if (i % 2 == 0) {
        right.add(BusinessSite(this._sites[i]));
      } else {
        left.add(BusinessSite(this._sites[i]));
      }
    }

    final leftColumn = Expanded(
      child: Container(
        padding: EdgeInsets.only(right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: left,
        ),
      ),
    );

    final rightColumn = Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: right,
        ),
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [leftColumn, rightColumn],
    );
  }

  @override
  Widget build(BuildContext context) {
    return shouldFurtherSplitScreen(context)
        ? this._getSplitView()
        : this._getSingleView();
  }
}
