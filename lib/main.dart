import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:polarmorph/utils.dart';

import 'theme.dart';
import 'business_event.dart';
import 'business_hours.dart';
import 'business_headline.dart';
import 'business_site_group.dart';
import 'constants.dart';

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
  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        brightness: Theme.of(context).brightness,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(children: children),
        ),
      ),
    );
  }
}
