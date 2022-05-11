import 'package:flutter/material.dart';

/// Carousel Card Widget
class CarouselCard extends StatelessWidget {

  /// Constructor for [CarouselCard]
  final String articleTitle;
  final String articleDescription;
  final String time;
  final String author;
  final void Function() onTileTap;

  const CarouselCard({
    Key? key,
    required this.articleTitle,
    required this.articleDescription,
    required this.time,
    required this.author,
    required this.onTileTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: GestureDetector(
        onTap: onTileTap,
        child: Card(
          margin: EdgeInsets.only(left: 6, right: 6),
          clipBehavior: Clip.antiAlias,
          elevation: 7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 16/9,
                child: Image(
                  image: NetworkImage(
                    articleDescription,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF222222).withOpacity(0.5),
                      Color(0xFF222222).withOpacity(1.0),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9, right: 9, bottom: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      articleTitle,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
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
                            color: Color(0xFFC4C4C4),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.watch_later_outlined,
                                color: Color(0xFFC4C4C4),
                                size: 14,
                              ),
                              Text(
                                ' $time min',
                                style: TextStyle(
                                  color: Color(0xFFC4C4C4),
                                  fontSize: 12,
                                ),
                              ),
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
      ),
    );
  }
}
