// ignore_for_file: deprecated_member_use, prefer_const_constructors, public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      color: Theme.of(context).cardTheme.color,
      elevation: 3,
      padding: EdgeInsets.symmetric(vertical: 14),
      onPressed: () {},
      icon: Icon(
        icon,
        size: 20,
        color: Theme.of(context).iconTheme.color,
      ),
      label: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
    );
  }
}
