import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/app_theme.dart';
import 'package:mondaymorning/src/services/themes/mm_colors.dart';

class LightAppTheme extends AppTheme {
  LightAppTheme()
      : super(
            themeMode: ThemeMode.light,
            primarySwatch: MMColors.blue,
            secondarySwatch: Colors.indigo,
            accentSwatch: MMColors.blueAccent,
            backgroundColor: MMColors.kLightScaffoldBackground,
            baseFontSize: 16,
            baseIconSize: 24,
            baseSize: 16,
            baseSpacing: 8);
}
