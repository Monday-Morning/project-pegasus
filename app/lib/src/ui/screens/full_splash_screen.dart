import 'package:flutter/material.dart';

class FullSplashScreen extends StatefulWidget {
  const FullSplashScreen({Key? key}) : super(key: key);

  @override
  State<FullSplashScreen> createState() => _FullSplashScreenState();
}

class _FullSplashScreenState extends State<FullSplashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'assets/images/${Theme.of(context).brightness.name}/splash.gif',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
