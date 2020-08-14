import 'package:flutter/material.dart';

import 'colors.dart';

enum PolarmorphTextType {
  headlineLarge,
  headlineMedium,
  headlineSmall,
  subtitle,
  body,
}

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

bool _shouldUseSmallerFont(BuildContext context) {
  final mediaQuery = MediaQuery.of(context);
  final width = mediaQuery.size.width;
  return width <= 360 ||
      (width > 480 && width <= 720) ||
      (width > 840 && width <= 1080);
}

TextStyle getTextStyle(BuildContext context, PolarmorphTextType textType) {
  final textStyle = Theme.of(context).textTheme;
  final smaller = {
    PolarmorphTextType.headlineLarge: textStyle.headline2,
    PolarmorphTextType.headlineMedium: textStyle.headline4,
    PolarmorphTextType.headlineSmall: textStyle.headline6,
    PolarmorphTextType.subtitle: textStyle.subtitle2,
    PolarmorphTextType.body: textStyle.bodyText2,
  };
  final regular = {
    PolarmorphTextType.headlineLarge: textStyle.headline1,
    PolarmorphTextType.headlineMedium: textStyle.headline3,
    PolarmorphTextType.headlineSmall: textStyle.headline5,
    PolarmorphTextType.subtitle: textStyle.subtitle1,
    PolarmorphTextType.body: textStyle.bodyText1,
  };

  return _shouldUseSmallerFont(context) ? smaller[textType] : regular[textType];
}
