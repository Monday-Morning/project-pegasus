import 'package:flutter/material.dart';
import 'package:mondaymorning/src/ui/components/home/search_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
