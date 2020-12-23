import 'package:flutter/material.dart';
import 'package:mondaymorning/app/locator.dart';
import 'package:mondaymorning/app/router.gr.dart';
import 'package:mondaymorning/ui/views/home/home_view.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator(environment: Env.dev);
  runApp(MMApp());
}

/// The main app.
class MMApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monday Morning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(),
      initialRoute: Routes.homeView,
      onGenerateRoute: AppRouter().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
