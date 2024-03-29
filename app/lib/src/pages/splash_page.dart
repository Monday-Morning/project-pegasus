import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/index.dart';
import 'package:mondaymorning/src/ui/screens/full_splash_screen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Monday Morning',
      debugShowCheckedModeBanner: false,
      theme: MMTheme.materialLight,
      darkTheme: MMTheme.materialDark,
      themeMode: ThemeMode.system,
      home: FullSplashScreen()
    );
  }
}
