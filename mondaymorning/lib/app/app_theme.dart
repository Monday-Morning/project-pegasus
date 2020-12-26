import 'package:flutter/material.dart';

/// Defines the theme data used in the app.
class AppTheme {
  /// Configures dark theme
  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.blue[700],
    accentColor: Colors.yellow[700],
  );

  /// Configures light theme.
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.blue[300],
    accentColor: Colors.yellow[300],
  );
}
