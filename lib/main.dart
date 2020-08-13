import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'theme.dart';
import 'business_event.dart';
import 'business_hours.dart';
import 'business_headline.dart';
import 'colors.dart';

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
  Widget _getDivider() {
    return Divider(
      color: PolarmorphColor.black,
      height: 20,
      thickness: 7,
    );
  }

  @override
  Widget build(BuildContext context) {
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
          child: Column(
            children: <Widget>[
              this._getDivider(),
              BusinessHeadline(),
              this._getDivider(),
              BusinessHours(),
              this._getDivider(),
              BusinessEvent(),
              this._getDivider(),
            ],
          ),
        ),
      ),
    );
  }
}
