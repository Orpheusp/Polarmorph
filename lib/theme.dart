import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:google_fonts/google_fonts.dart';

final polarmorphTextTheme = TextTheme(
  headline1: GoogleFonts.cabinCondensed(
    fontSize: 96,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    color: PolarmorphColor.black,
    height: 96,
  ),
  headline2: GoogleFonts.cabinCondensed(
    fontSize: 60,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    color: PolarmorphColor.black,
    height: 60,
  ),
  headline3: GoogleFonts.arvo(
    fontSize: 48,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    color: PolarmorphColor.black,
    height: 48,
  ),
  headline4: GoogleFonts.arvo(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: PolarmorphColor.black,
    height: 34,
  ),
  headline5: GoogleFonts.cabin(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.15,
    color: PolarmorphColor.black,
    height: 24,
  ),
  headline6: GoogleFonts.cabin(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    color: PolarmorphColor.black,
    height: 20,
  ),
  subtitle1: GoogleFonts.cabin(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.15,
    color: PolarmorphColor.black,
  ),
  subtitle2: GoogleFonts.cabin(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.1,
    color: PolarmorphColor.black,
  ),
  bodyText1: GoogleFonts.arvo(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
    color: PolarmorphColor.black,
  ),
  bodyText2: GoogleFonts.arvo(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: PolarmorphColor.black,
  ),
  button: GoogleFonts.cabin(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.25,
    color: PolarmorphColor.black,
  ),
  caption: GoogleFonts.cabin(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    color: PolarmorphColor.black,
  ),
  overline: GoogleFonts.cabin(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: PolarmorphColor.red,
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
