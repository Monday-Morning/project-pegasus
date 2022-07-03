import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/providers/mockdata/mock_data.dart';
import 'package:mondaymorning/src/widgets/article_tile.dart';
import 'package:mondaymorning/src/widgets/custom_icon_button.dart';
import 'package:mondaymorning/src/widgets/carousel_card.dart';
import 'package:mondaymorning/src/services/navigation/router.gr.dart';

/// ArticlesPage : Overview of articles containing carousel cards Article Overview Tiles and 2 Menu Buttons
class ArticlesPage extends StatelessWidget {
  /// Constructor for [ArticlesPage]
  ArticlesPage({Key? key}) : super(key: key);

  /// Instance of [Post]
  final articles = Post.posts;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CarouselCard(
                  articleTitle: articles[0].title,
                  articleDescription: articles[0].description,
                  onTileTap: () {
                    context.router.push(
                      FullRouteArticle(postId: articles[0].id),
                    );
                  },
                  time: articles[0].time,
                  author: articles[0].author,
                ),

                SizedBox(height: 13),

                for (int i = 1; i < articles.length; i++)
                ArticleTile(
                  articleTitle: articles[i].title,
                  articleDescription: articles[i].description,
                  time: articles[i].time,
                  author: articles[i].author,
                  onTileTap: () {
                    context.router.push(
                      FullRouteArticle(postId: articles[i].id),
                    );
                  },
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 6, right: 5),
                        child: CustomIconButton(
                          icon: Icons.calendar_today_outlined,
                          text: 'Upcoming Events',
                          onButtonTap: () {
                            context.router.push(
                              ComingSoonRoute(),
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 6, left: 5),
                        child: CustomIconButton(
                          icon: Icons.pie_chart_outline,
                          text: 'Ongoing Poll',
                          onButtonTap: () {
                            context.router.push(
                              ComingSoonRoute(),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
