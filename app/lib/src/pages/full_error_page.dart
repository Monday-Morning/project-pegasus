import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/index.dart';
import 'package:mondaymorning/src/ui/screens/full_error_screen.dart';

class FullErrorPage extends StatelessWidget {
  const FullErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monday Morning',
      debugShowCheckedModeBanner: false,
      theme: MMTheme.materialLight,
      darkTheme: MMTheme.materialDark,
      themeMode: ThemeMode.system,
      home: FullErrorScreen(),
    );
  }
}
