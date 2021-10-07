import 'package:flutter/material.dart';
import 'package:mondaymorning/src/views/home_view.dart';

/// Main app widget.
class MMApp extends StatelessWidget {
  /// Constructor for MMApp
  const MMApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MondayMorning',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const HomeView(),
    );
  }
}
