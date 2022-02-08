/// ArticleTile is the card widget displaying an articles preview on home page

import 'package:flutter/material.dart';

class ArticleTile extends StatelessWidget {

  /// Constructor for [ArticleTile]
  final String articleTitle;
  final String articleDescription;
  final void Function() onTileTap;

  const ArticleTile({
    Key? key,
    required this.articleTitle,
    required this.articleDescription,
    required this.onTileTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTileTap,
      child: Card(
        margin: EdgeInsets.only(bottom: 11, left: 6, right: 6),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        color: Theme.of(context).cardTheme.color,
        elevation: 7,
        child: Row(
          children: [
            Container(
              constraints: BoxConstraints.expand(width: 108, height: 101),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                ),
              ),
              child: Image.network(
                articleDescription,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 13),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Editorial',
                    style: TextStyle(
                      fontSize: 11,
                      color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
                    ),
                  ),
                  Text(
                    articleTitle,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Author 1, Author 2',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF6E6E6E)
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              color: Color(0xFF6E6E6E),
                              size: 14,
                            ),
                            Text(
                              ' 12 min',
                              style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 12),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
