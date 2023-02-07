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
import 'package:uni_links/uni_links.dart';

part 'app_config_provider.g.dart';

@riverpod
class AppConfigProvider extends _$AppConfigProvider {
  Future<AppConfig> getAppConfig() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    if (kDebugMode) {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
      await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(false);
      await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
    } else {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
      await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
      FlutterError.onError =
          FirebaseCrashlytics.instance.recordFlutterFatalError;
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

    String? initialUrl = await getInitialLink();

    return AppConfig().init(
      firebaseApp,
      themeMode == 'light'
          ? ThemeMode.light
          : themeMode == 'dark'
              ? ThemeMode.dark
              : ThemeMode.system,
      initialUrl,
    );
  }

  @override
  FutureOr<AppConfig> build() async {
    List<AppConfig?> appConfig = await Future.wait<AppConfig?>(
        [getAppConfig(), Future.delayed(Duration(seconds: 5), () => null)]);
    return appConfig.first!;
  }

  Future<void> toggleAppTheme(ThemeMode themeMode) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('preffered_app_theme_mode', themeMode.name);

    state = await AsyncValue.guard(() async {
      return AppConfig().init(
        state.value!.firebaseApp,
        themeMode,
        state.value!.initialUrl,
      );
    });
  }
}
