import 'package:flutter/material.dart';
import 'colors.dart';

final polarmorphTextTheme = TextTheme(
  headline1: TextStyle(
    fontFamily: 'Cabin Condensed',
    fontSize: 96,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    color: PolarmorphColor.black,
    height: 1,
  ),
  headline2: TextStyle(
    fontFamily: 'Cabin Condensed',
    fontSize: 60,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    color: PolarmorphColor.black,
    height: 1,
  ),
  headline3: TextStyle(
    fontFamily: 'Arvo',
    fontSize: 48,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: PolarmorphColor.black,
    height: 1,
  ),
  headline4: TextStyle(
    fontFamily: 'Arvo',
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: PolarmorphColor.black,
    height: 1,
  ),
  headline5: TextStyle(
    fontFamily: 'Cabin',
    fontSize: 24,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.15,
    color: PolarmorphColor.black,
    height: 1,
  ),
  headline6: TextStyle(
    fontFamily: 'Cabin',
    fontSize: 20,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    color: PolarmorphColor.black,
    height: 1,
  ),
  subtitle1: TextStyle(
    fontFamily: 'Cabin',
    fontSize: 20,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.15,
    color: PolarmorphColor.black,
    height: 1.5,
  ),
  subtitle2: TextStyle(
    fontFamily: 'Cabin',
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.1,
    color: PolarmorphColor.black,
    height: 1.5,
  ),
  bodyText1: TextStyle(
    fontFamily: 'Arvo',
    fontSize: 20,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: PolarmorphColor.black,
    height: 1.2,
  ),
  bodyText2: TextStyle(
    fontFamily: 'Arvo',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: PolarmorphColor.black,
  ),
  button: TextStyle(
    fontFamily: 'Cabin',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.25,
    color: PolarmorphColor.black,
    height: 1.2,
  ),
  caption: TextStyle(
    fontFamily: 'Cabin',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    color: PolarmorphColor.black,
    height: 1.2,
  ),
  overline: TextStyle(
    fontFamily: 'Cabin',
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: PolarmorphColor.red,
    height: 1,
  ),
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
