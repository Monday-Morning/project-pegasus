import 'package:flutter/material.dart';

///Tags : Keyword tags For full article page view
class Tag extends StatelessWidget {
  final String tag;
  const Tag({Key? key, required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color(0xff4091D9),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      margin: EdgeInsets.only(left: 8),
      child: Text(
        tag,
        style: TextStyle(
          color: Theme.of(context).appBarTheme.backgroundColor,
        ),
      ),
    );
  }
}
