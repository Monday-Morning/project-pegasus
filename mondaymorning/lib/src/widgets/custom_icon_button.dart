/// CustomIconButton takes an icon amd a text, builds a raised button
// ignore_for_file: public_member_api_docs

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onButtonTap,
  }) : super(key: key);

  /// Constructor for [CustomIconButton]
  final IconData icon;
  final String text;
  final void Function() onButtonTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onButtonTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Theme.of(context).cardTheme.color,
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
      ),
      child: Row(
        children: [
          const SizedBox(width: 4),
          Icon(
            icon,
            size: 18,
            color: Theme.of(context).iconTheme.color,
          ),
          const SizedBox(width: 10),
          Container(
            width: MediaQuery.of(context).size.width * 0.291,
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
