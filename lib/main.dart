import 'package:flutter/material.dart';
import 'theme.dart';
import 'business_headline.dart';

void main() {
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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        brightness: Theme.of(context).brightness,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BusinessHeadline(),
        ],
      ),
    );
  }
}
