import 'package:flutter/material.dart';

/// Defines the theme data used in the app.
class Themes {
  /// Configures dark theme
  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: Colors.blue[700],
    accentColor: Colors.yellow[700],
  );

  /// Configures light theme.
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    backgroundColor: Colors.blue[300],
    accentColor: Colors.yellow[300],
  );
}
