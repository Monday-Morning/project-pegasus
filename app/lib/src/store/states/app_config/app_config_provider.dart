import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mondaymorning/firebase_options.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/store/states/app_config/app_config_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_config_provider.g.dart';

@riverpod
Future<AppConfig> appConfig(AppConfigRef ref) async {
  FirebaseApp firebaseApp = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);

  // TODO: Setup firebase app check
  // await FirebaseAppCheck.instance.activate(
  //   webRecaptchaSiteKey: 'web-captcha-key',
  // );

  // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  await GraphQLService().init();

  GoogleFonts.config.allowRuntimeFetching = false;

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? themeMode = prefs.getString('preffered_app_theme_mode');

  // TODO: remove in production
  await Future.delayed(const Duration(seconds: 1), () => {});

  return AppConfig().init(
    firebaseApp,
    themeMode == 'light'
        ? ThemeMode.light
        : themeMode == 'dark'
            ? ThemeMode.dark
            : ThemeMode.system,
  );
}
