// ignore_for_file: public_member_api_docs, deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mondaymorning/src/providers/mockdata/mock_data.dart';
import 'package:mondaymorning/src/widgets/article_tile.dart';
import 'package:mondaymorning/src/widgets/custom_icon_button.dart';

class ArticlesPage extends StatelessWidget {
  ArticlesPage({Key? key}) : super(key: key);

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
                    margin:EdgeInsets.only(left: 6),
                    child: CustomIconButton(icon: Icons.calendar_today_outlined, text: 'Upcoming Events'),
                  ),
                ),

                SizedBox(width: 12),

                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 6),
                    child: CustomIconButton(icon: Icons.pie_chart_outline, text: 'Ongoing Poll'),
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
