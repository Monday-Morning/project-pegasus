import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mondaymorning/src/themes/colors.dart';

/// Base text theme of the app.
final TextTheme textTheme = TextTheme(
  headline1: GoogleFonts.sourceSansPro(
    fontWeight: FontWeight.w600,
  ),
  headline2: GoogleFonts.ibmPlexSans(
    fontWeight: FontWeight.w600,
  ),
  bodyText1: GoogleFonts.sourceSansPro(
    fontWeight: FontWeight.w400,
  ),
  subtitle1: GoogleFonts.inter(
    fontWeight: FontWeight.w500,
  ),
  subtitle2: GoogleFonts.inter(
    fontWeight: FontWeight.w400,
  ),
);

/// Base theme for the app.
abstract class AppTheme {
  /// Private constructor for [AppTheme].
  AppTheme._();

  /// Base light theme of the app.
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.kLightScaffoldBackground,
    textTheme: textTheme,
    colorScheme: const ColorScheme.light(),
  );

  /// Base dark theme of the app.
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.kDarkScaffoldBackground,
    textTheme: textTheme,
    colorScheme: const ColorScheme.dark(),
  );
}
