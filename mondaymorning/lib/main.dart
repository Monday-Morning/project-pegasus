import 'package:flutter/material.dart';
import 'package:mondaymorning/ui/views/home/home_view.dart';

void main() {
  runApp(MMApp());
}

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
    );
  }
}

