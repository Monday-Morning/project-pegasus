/// Carousel Card Widget

import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Card(
        margin: EdgeInsets.only(bottom: 12.5, left: 6, right: 6),
        clipBehavior: Clip.antiAlias,
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Ink.image(
              image: NetworkImage(
                'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg',
              ),
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {},
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
                    'Chaos, Curiosity and COVID-19: A Biotechnologist’s Perspective',
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
                        'Debabrata Malik, Rama Krushna Behera',
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
                              ' 12 min',
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
    );
  }
}
