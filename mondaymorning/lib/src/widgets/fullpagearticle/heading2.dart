import 'package:flutter/material.dart';

///Heading2: Sub heading text widget for full article page view
class Heading2 extends StatelessWidget {
  final String heading2;
  const Heading2({Key? key, required this.heading2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      heading2,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
