import 'package:flutter/material.dart';
import 'colors.dart';

final polarmorphTextTheme = TextTheme(
  bodyText2: TextStyle(color: PolarmorphColor.black),
);

final polarmorphTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: PolarmorphColor.black,
  accentColor: PolarmorphColor.red,
  textTheme: polarmorphTextTheme,
  scaffoldBackgroundColor: PolarmorphColor.white,
  // This makes the visual density adapt to the platform that you run
  // the app on. For desktop platforms, the controls will be smaller and
  // closer together (more dense) than on mobile platforms.
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
