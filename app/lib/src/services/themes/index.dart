import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/app_theme.dart';
import 'package:mondaymorning/src/services/themes/dark.dart';
import 'package:mondaymorning/src/services/themes/light.dart';

class MMTheme {
  static final AppTheme _darkAppTheme = DarkAppTheme();
  static final AppTheme _lightAppTheme = LightAppTheme();

  static AppTheme get dark => _darkAppTheme;
  static AppTheme get light => _lightAppTheme;

  static AppTheme get system =>
      ThemeMode.system == ThemeMode.dark ? _darkAppTheme : _lightAppTheme;

  static ThemeData get materialDark => _darkAppTheme.materialTheme;
  static ThemeData get materialLight => _lightAppTheme.materialTheme;
}
