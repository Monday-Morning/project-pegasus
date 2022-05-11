import 'package:flutter/material.dart';

/// ArticleTile is the card widget displaying an articles preview on home page
class ArticleTile extends StatelessWidget {

  /// Constructor for [ArticleTile]
  final String articleTitle;
  final String articleDescription;
  final String time;
  final String author;
  final void Function() onTileTap;

  const ArticleTile({
    Key? key,
    required this.articleTitle,
    required this.articleDescription,
    required this.time,
    required this.author,
    required this.onTileTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTileTap,
      child: Card(
        margin: EdgeInsets.only(bottom: 10, left: 6, right: 6),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        color: Theme.of(context).cardTheme.color,
        elevation: 7,
        child: Row(
          children: [
            Container(
              height: 90,
              child: AspectRatio(
                aspectRatio: 108/100,
                child: Container(
                  //constraints: BoxConstraints.expand(width: 104, height: 92),
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
              ),
            ),
            SizedBox(width: 11),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4),
                  Text(
                    'Editorial',
                    style: TextStyle(
                      fontSize: 11,
                      color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Text(
                      articleTitle,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 9),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        author,
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
                              ' $time min',
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
                  SizedBox(height: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
