import 'package:flutter/material.dart';

class MMColors {
  static const Color kDarkScaffoldBackground = Color(0xFF232323);
  static const Color kLightScaffoldBackground = Color(0xFFFDFDFD);
  static const Color kLightCardColor = Color(0xFFEDEDED);
  static const Color kHighlightColor = Color(0xFF6E6E6E);

  // static const Color white = Color(0xFFFFFFFF);
  // static const Color black = Color(0xFF222222);
  // static const Color neutral90 = Color(0xFF353535);
  // static const Color neutral10 = Color(0xFFFDFDFD);

  // static const Color kBlue05 = Color(0xFF001C34);
  // static const Color kBlue10 = Color(0xFFF4FAFF);
  // static const Color kBlue20 = Color(0xab73afe3);
  // static const Color kBlue30 = Color(0xff73AFE3);
  // static const Color kBlue40 = Color(0xeb4091d9);
  // static const Color kBlue50 = Color(0xff006DCC);
  // static const Color kLightRed = Color(0xffE15B62);
  // static const Color kDarkYellow = Color(0xffF6D982);
  // static const Color kGrey30 = Color(0xffEDEDED);
  // static const Color kGrey50 = Color(0xffC4C4C4);
  // static const Color kGrey60 = Color(0xff999999);
  // static const Color kGrey70 = Color(0xff6E6E6E);

  // BLUE
  static const MaterialColor blue = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      50: Color(0xFFF4FAFF),
      100: Color(0xFFD9E9F7),
      200: Color(0xFFA6CCED),
      300: Color(0xFF73AFE3),
      400: Color(0xFF4091D9),
      500: Color(_bluePrimaryValue),
      600: Color(0xFF005299),
      700: Color(0xFF003C70),
      800: Color(0xFF002647),
      850: Color(0xFF001C34),
      900: Color(0xFF00101F),
    },
  );
  static const int _bluePrimaryValue = 0xFF006DCC;

  // BLUE ACCENT
  static const MaterialAccentColor blueAccent = MaterialAccentColor(
    _blueAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFF82B1FF),
      200: Color(_blueAccentPrimaryValue),
      400: Color(0xFF2979FF),
      700: Color(0xFF2962FF),
    },
  );
  static const int _blueAccentPrimaryValue = 0xFF448AFF;

  // LIGHT BLUE ACCENT
  static const MaterialAccentColor lightBlueAccent = MaterialAccentColor(
    _lightBlueAccentPrimaryValue,
    <int, Color>{
      100: Color(0xFF80D8FF),
      200: Color(_lightBlueAccentPrimaryValue),
      400: Color(0xFF00B0FF),
      700: Color(0xFF0091EA),
    },
  );
  static const int _lightBlueAccentPrimaryValue = 0xFF40C4FF;

  // RED
  static const MaterialColor red = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      50: Color(0xFFF9DEE0),
      100: Color(0xFFF9DEE0),
      200: Color(0xFFF1B2B6),
      300: Color(0xFFE9878C),
      400: Color(0xFFE15B62),
      500: Color(_redPrimaryValue),
      600: Color(0xFFA11B22),
      700: Color(0xFF761419),
      800: Color(0xFF4B0D10),
      900: Color(0xFF200507),
    },
  );
  static const int _redPrimaryValue = 0xFFD7242E;

  // YELLOW
  static const MaterialColor yellow = MaterialColor(
    _yellowPrimaryValue,
    <int, Color>{
      50: Color(0xFFFEF2DB),
      100: Color(0xFFFEF2DB),
      200: Color(0xFFFDE1AC),
      300: Color(0xFFFBD07C),
      400: Color(0xFFFABF4C),
      500: Color(_yellowPrimaryValue),
      600: Color(0xFFBA800D),
      700: Color(0xFF885D09),
      800: Color(0xFF573C06),
      900: Color(0xFF251A03),
    },
  );
  static const int _yellowPrimaryValue = 0xFFF8AA11;

  // ORANGE
  static const MaterialColor orange = MaterialColor(
    _orangePrimaryValue,
    <int, Color>{
      50: Color(0xFFFCE8DF),
      100: Color(0xFFFCE8DF),
      200: Color(0xFFF8C9B4),
      300: Color(0xFFF5AA8A),
      400: Color(0xFFF18B5F),
      500: Color(_orangePrimaryValue),
      600: Color(0xFFB14B1F),
      700: Color(0xFF823717),
      800: Color(0xFF53230F),
      900: Color(0xFF230F06),
    },
  );
  static const int _orangePrimaryValue = 0xFFEC642A;

  // TODO: add correct values for below tints/accents

  // TODO: GREEN
  static const MaterialColor green = MaterialColor(
    _greenPrimaryValue,
    <int, Color>{
      50: Color(0xFFE8F5E9),
      100: Color(0xFFE8F5E9),
      200: Color(0xFFC8E6C9),
      300: Color(0xFFA7D7A8),
      400: Color(0xFF87C886),
      500: Color(_greenPrimaryValue),
      600: Color(0xFF388E3C),
      700: Color(0xFF2E7D33),
      800: Color(0xFF246E2A),
      900: Color(0xFF1A5E21),
    },
  );
  static const int _greenPrimaryValue = 0xFF4CAF50;

  // TODO: PURPLE
  static const MaterialColor purple = MaterialColor(
    _purplePrimaryValue,
    <int, Color>{
      50: Color(0xFFEDE7F6),
      100: Color(0xFFEDE7F6),
      200: Color(0xFFD1C4E9),
      300: Color(0xFFB39FDB),
      400: Color(0xFF957ACE),
      500: Color(_purplePrimaryValue),
      600: Color(0xFF5E35B1),
      700: Color(0xFF4A2C8E),
      800: Color(0xFF36236B),
      900: Color(0xFF211A48),
    },
  );
  static const int _purplePrimaryValue = 0xFF673AB7;

  // TODO: BROWN
  static const MaterialColor brown = MaterialColor(
    _brownPrimaryValue,
    <int, Color>{
      50: Color(0xFFEFEBE9),
      100: Color(0xFFEFEBE9),
      200: Color(0xFFD7CCC8),
      300: Color(0xFFBCAAA4),
      400: Color(0xFFA1887F),
      500: Color(_brownPrimaryValue),
      600: Color(0xFF6D4C41),
      700: Color(0xFF5D4037),
      800: Color(0xFF4E342D),
      900: Color(0xFF3E2723),
    },
  );
  static const int _brownPrimaryValue = 0xFF795548;

  // TODO: PINK
  static const MaterialColor pink = MaterialColor(
    _pinkPrimaryValue,
    <int, Color>{
      50: Color(0xFFFCE4EC),
      100: Color(0xFFFCE4EC),
      200: Color(0xFFF8BBD0),
      300: Color(0xFFF48FB1),
      400: Color(0xFFF06292),
      500: Color(_pinkPrimaryValue),
      600: Color(0xFFC2185B),
      700: Color(0xFF9C1453),
      800: Color(0xFF780E4B),
      900: Color(0xFF520843),
    },
  );
  static const int _pinkPrimaryValue = 0xFFE91E63;

  // INDIGO
  static const MaterialColor indigo = MaterialColor(
    _indigoPrimaryValue,
    <int, Color>{
      50: Color(0xFFDBDEF0),
      100: Color(0xFFDBDEF0),
      200: Color(0xFFABB3DD),
      300: Color(0xFF7B88CA),
      400: Color(0xFF4B5CB6),
      500: Color(_indigoPrimaryValue),
      600: Color(0xFF0B1C76),
      700: Color(0xFF081557),
      800: Color(0xFF050D37),
      900: Color(0xFF020618),
    },
  );
  static const int _indigoPrimaryValue = 0xFF0F269E;
}
