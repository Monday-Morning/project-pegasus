import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/core/navigation_service.dart';
import 'package:mondaymorning/src/core/router.dart';
import 'package:mondaymorning/src/views/home_view.dart';

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
