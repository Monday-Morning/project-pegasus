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
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: AppColors.kBlue10, selectedItemColor: AppColors.kBlue50, unselectedItemColor: AppColors.kBlue40),
    cardTheme: const CardTheme( color: AppColors.white),
    iconTheme: const IconThemeData(color: AppColors.black),
    textTheme: textTheme,
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.kLightScaffoldBackground, foregroundColor: AppColors.black),
    colorScheme: const ColorScheme.light(),
  );

  /// Base dark theme of the app.
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.kDarkScaffoldBackground,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: AppColors.kBlue05, selectedItemColor: AppColors.kBlue30, unselectedItemColor: AppColors.kBlue20),
    cardTheme: const CardTheme( color: AppColors.neutral90),
    iconTheme: const IconThemeData(color: AppColors.neutral10),
    textTheme: textTheme,
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.kDarkScaffoldBackground, foregroundColor: AppColors.neutral10),
    colorScheme: const ColorScheme.dark(),
  );
}

