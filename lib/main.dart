import 'package:flutter/material.dart';
import 'colors.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Polarmorph Coffee & Art',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: PolarmorphColor.black,
        accentColor: PolarmorphColor.red,
        textTheme:
            TextTheme(bodyText2: TextStyle(color: PolarmorphColor.black)),
        scaffoldBackgroundColor: PolarmorphColor.white,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

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
          Text('Polarmorph Coffee & Art'),
        ],
      ),
    );
  }
}
