import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:polarmorph/utils.dart';

import 'business_event.dart';
import 'business_headline.dart';
import 'business_hours.dart';
import 'business_site_group.dart';
import 'constants.dart';
import 'theme.dart';
import 'utils.dart';

void addLicenses() {
  LicenseRegistry.addLicense(() async* {
    final arvoLicense = await rootBundle.loadString('assets/font/OFL-Arvo.txt');
    final cabinLicense =
        await rootBundle.loadString('assets/font/OFL-Cabin.txt');
    final cabinCondensedLicense =
        await rootBundle.loadString('assets/font/OFL-CabinCondensed.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], arvoLicense);
    yield LicenseEntryWithLineBreaks(['google_fonts'], cabinLicense);
    yield LicenseEntryWithLineBreaks(['google_fonts'], cabinCondensedLicense);
  });
}

void main() {
  addLicenses();
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Polarmorph Coffee & Art',
      theme: polarmorphTheme,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget _getColumnWrapper(List<Widget> children) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(children: children),
    );
  }

  Widget _getSingleView() {
    List<Widget> children = [
      BusinessHeadline(),
      BusinessHours(BUSINESS_HOURS),
      BusinessEvent(BUSINESS_EVENTS),
      BusinessSiteGroup(BUSINESS_SITES),
    ];

    children = divideWidgets(
      children,
      DividerType.bold,
      shouldInsertHead: true,
    );

    return SingleChildScrollView(child: this._getColumnWrapper(children));
  }

  Widget _getSplitView(BuildContext context) {
    List<Widget> leftChildren = [
      BusinessHeadline(),
      BusinessHours(BUSINESS_HOURS),
      BusinessEvent(BUSINESS_EVENTS),
    ];

    leftChildren = divideWidgets(
      leftChildren,
      DividerType.bold,
      shouldInsertHead: true,
      shouldInsertTail: true,
    );

    List<Widget> rightChildren = [BusinessSiteGroup(BUSINESS_SITES)];

    Widget left = Expanded(
      flex: 1,
      child: this._getColumnWrapper(leftChildren),
    );
    Widget right = Expanded(
      flex: shouldFurtherSplitScreen(context) ? 2 : 1,
      child: this._getColumnWrapper(rightChildren),
    );

    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [left, right],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final view = shouldSplitScreen(context)
        ? this._getSplitView(context)
        : this._getSingleView();

    final body = Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1080),
        child: view,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        brightness: Theme.of(context).brightness,
      ),
      body: body,
    );
  }
}
