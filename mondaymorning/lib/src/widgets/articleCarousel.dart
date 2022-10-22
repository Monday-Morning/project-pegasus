import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mondaymorning/src/models/issues/article_issue.dart';
import 'package:mondaymorning/src/utils/dummy/articles.dart';

import '../providers/mockdata/mock_data.dart';
import '../services/navigation/router.gr.dart';
import 'carousel_card.dart';

class ArticleCarousel extends StatefulWidget {

  final List<ArticleIssue> featured;

  const ArticleCarousel({required this.featured});

  @override
  State<ArticleCarousel> createState() => _ArticleCarouselState();
}

class _ArticleCarouselState extends State<ArticleCarousel> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 16/9,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(
                    () {
                  _currentIndex = index;
                },
              );
            },
          ),
          items: [0,1,2,3,4].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return CarouselCard(
                  article: widget.featured[i],
                  onTileTap: () {
                    context.router.push(
                      FullRouteArticle(postId: 1),
                    );
                  },
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [0,1,2,3,4].map((i) {
            return Container(
              width: 5.0,
              height: 5.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == i
                    ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
                    : Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}


