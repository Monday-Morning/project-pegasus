import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
/// Defines the theme data used in the app.
class AppTheme {
  /// Default dark theme of the app.
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.blue[700],
    accentColor: Colors.yellow[700],
  );

  /// Default light theme of the app.
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.blue[300],
    accentColor: Colors.yellow[300],
  );
}
