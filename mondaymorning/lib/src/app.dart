import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/providers/providers.dart';
import 'package:mondaymorning/src/services/navigation/router.gr.dart';
import 'package:mondaymorning/src/utils/themes.dart';

/// Main app widget.
class MMApp extends ConsumerWidget {
  /// Constructor for [MMApp]
  MMApp({Key? key}) : super(key: key);

  /// Instance of [AppRouter]
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkmodeEnabled = ref.watch<bool>(appThemeNotifierProvider);
    return MaterialApp.router(
      title: 'MondayMorning',
      themeMode: darkmodeEnabled ? ThemeMode.dark : ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}
