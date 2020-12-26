import 'package:flutter/material.dart';
import 'package:mondaymorning/app/locator.dart';
import 'package:mondaymorning/app/router.gr.dart';
import 'package:mondaymorning/app/theme_data.dart';
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
  /// Instance of Themes().
  final Themes themes = Themes();
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultThemeMode: ThemeMode.light,
      lightTheme: themes.lightTheme,
      darkTheme: themes.darkTheme,
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
