import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
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

  if (kDebugMode) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
    await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(false);
    await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  } else {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  }

  // TODO: Setup firebase app check
  // await FirebaseAppCheck.instance.activate(
  //   webRecaptchaSiteKey: 'web-captcha-key',
  // );

  await GraphQLService().init();

  GoogleFonts.config.allowRuntimeFetching = false;

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String? themeMode = prefs.getString('preffered_app_theme_mode');

  if (kDebugMode) {
    await Future.delayed(const Duration(seconds: 3), () => {});
  }

  return AppConfig().init(
    firebaseApp,
    themeMode == 'light'
        ? ThemeMode.light
        : themeMode == 'dark'
            ? ThemeMode.dark
            : ThemeMode.system,
  );
}
