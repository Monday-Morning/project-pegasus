import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/app_theme.dart';
import 'package:mondaymorning/src/services/themes/mm_colors.dart';

class DarkAppTheme extends AppTheme {
  DarkAppTheme()
      : super(
            themeMode: ThemeMode.dark,
            primarySwatch: MMColors.blue,
            secondarySwatch: MMColors.indigo,
            accentSwatch: MMColors.lightBlueAccent,
            backgroundColor: MMColors.kDarkScaffoldBackground,
            baseFontSize: 16,
            baseIconSize: 24,
            baseSize: 16,
            baseSpacing: 8);
}
