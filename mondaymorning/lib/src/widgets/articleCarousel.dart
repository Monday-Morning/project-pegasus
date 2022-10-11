import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../providers/mockdata/mock_data.dart';
import '../services/navigation/router.gr.dart';
import 'carousel_card.dart';

class ArticleCarousel extends StatefulWidget {
  const ArticleCarousel({Key? key}) : super(key: key);

  @override
  State<ArticleCarousel> createState() => _ArticleCarouselState();
}

class _ArticleCarouselState extends State<ArticleCarousel> {

  /// Instance of [Post]
  final articles = Post.posts;

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
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return CarouselCard(
                  articleTitle: articles[0].title,
                  articleDescription: articles[0].description,
                  onTileTap: () {
                    context.router.push(
                      FullRouteArticle(postId: articles[0].id),
                    );
                  },
                  time: articles[0].time,
                  author: articles[0].author,
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


