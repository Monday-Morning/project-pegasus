import 'package:flutter/material.dart';
import 'package:mondaymorning/src/core/router.gr.dart';

/// Main app widget.
class MMApp extends StatelessWidget {
  /// Constructor for [MMApp]
  MMApp({Key? key}) : super(key: key);

  /// Instance of [AppRouter]
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'MondayMorning',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}
