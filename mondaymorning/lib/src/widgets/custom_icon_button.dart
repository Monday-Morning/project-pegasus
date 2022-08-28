/// CustomIconButton takes an icon amd a text, builds a raised button

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CustomIconButton extends StatelessWidget {

  /// Constructor for [CustomIconButton]
  final IconData icon;
  final String text;
  final void Function() onButtonTap;
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onButtonTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onButtonTap,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      color: Theme.of(context).cardTheme.color,
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 10),
      child: Row(
        children: [
          SizedBox(width: 4),
          Icon(
            icon,
            size: 18,
            color: Theme.of(context).iconTheme.color,
          ),
          SizedBox(width: 10),
          Container(
            width: MediaQuery.of(context).size.width*0.291,
            height: 16.5,
            child: AutoSizeText(
              text,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).iconTheme.color,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
