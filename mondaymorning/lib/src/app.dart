import 'package:flutter/material.dart';
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
    );
  }
}
