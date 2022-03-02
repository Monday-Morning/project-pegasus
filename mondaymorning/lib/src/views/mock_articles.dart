/// ArticlesPage : Overview of articles containing carousel cards Article Overview Tiles and 2 Menu Buttons

import 'package:flutter/material.dart';
import 'package:mondaymorning/src/providers/mockdata/mock_data.dart';
import 'package:mondaymorning/src/widgets/article_tile.dart';
import 'package:mondaymorning/src/widgets/custom_icon_button.dart';
import 'package:mondaymorning/src/widgets/carousel_card.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CarouselCard(),
            for (int i = 0; i < articles.length; i++)
              ArticleTile(
                articleTitle: articles[i].title,
                articleDescription: articles[i].description,
                onTileTap: () {},
              ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 6),
                    child: CustomIconButton(
                        icon: Icons.calendar_today_outlined,
                        text: 'Upcoming Events'),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 6),
                    child: CustomIconButton(
                        icon: Icons.pie_chart_outline, text: 'Ongoing Poll'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
