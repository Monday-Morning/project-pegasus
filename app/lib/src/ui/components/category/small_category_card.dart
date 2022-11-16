import 'package:flutter/material.dart';

class SmallCategoryCard extends StatelessWidget {
  const SmallCategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.onButtonTap,
  }) : super(key: key);

  /// Constructor for [SmallCategoryCard]
  final IconData icon;
  final String text;
  final void Function() onButtonTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onButtonTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Theme.of(context).cardTheme.color,
        elevation: 2,
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.291,
            height: 16.5,
            child: Text(
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
