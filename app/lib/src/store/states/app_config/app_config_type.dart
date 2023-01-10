import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AppConfig {
  static FirebaseApp? _firebaseApp;
  static ThemeMode? _themeMode;
  static String? _initialUrl;

  AppConfig init(
      FirebaseApp firebaseApp, ThemeMode themeMode, String? initialUrl) {
    AppConfig._firebaseApp = firebaseApp;
    AppConfig._themeMode = themeMode;
    AppConfig._initialUrl = initialUrl;
    return this;
  }

  ThemeMode get themeMode => _themeMode ?? ThemeMode.system;
  Brightness get brightness =>
      _themeMode == ThemeMode.dark ? Brightness.dark : Brightness.light;

  FirebaseApp get firebaseApp => _firebaseApp ?? Firebase.app();

  String? get initialUrl => _initialUrl;
}
