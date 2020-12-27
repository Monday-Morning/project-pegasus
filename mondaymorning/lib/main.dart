import 'package:flutter/material.dart';
import 'package:mondaymorning/app/locator.dart';
import 'package:mondaymorning/app/router.gr.dart';
import 'package:mondaymorning/app/app_theme.dart';
import 'package:mondaymorning/ui/views/home/home_view.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future<void> main() async {
  await ThemeManager.initialise();
  setupLocator(environment: Env.dev);
  runApp(MMApp());
}

/// The main app.
class MMApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultThemeMode: ThemeMode.light,
      lightTheme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      builder: (context, regularTheme, darkTheme, themeMode) => MaterialApp(
        title: 'Monday Morning',
        theme: regularTheme,
        darkTheme: darkTheme,
        themeMode: themeMode,
        home: HomeView(),
        initialRoute: Routes.homeView,
        onGenerateRoute: AppRouter().onGenerateRoute,
        navigatorKey: locator<NavigationService>().navigatorKey,
      ),
    );
  }
}
