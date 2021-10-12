import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Notifier for the app's theme state.
class AppThemeNotifier extends StateNotifier<bool> {
  /// Constructor for AppThemeNotifier.
  AppThemeNotifier() : super(false);

  /// Function to set the app theme to light mode.
  void setLightTheme() => state = false;

  /// Function to set the app theme to dark mode.
  void setDarkTheme() => state = true;
}
