import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/core/navigation_service.dart';
import 'package:mondaymorning/core/router.dart';
import 'package:mondaymorning/ui/home_view.dart';

void main() {
  runApp(const ProviderScope(child: MMApp()));
}

/// The main app.
class MMApp extends StatelessWidget {
  const MMApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MondayMorning',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const HomeView(),
      navigatorKey: context.read(navigatorProvider).navigatorKey,
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
