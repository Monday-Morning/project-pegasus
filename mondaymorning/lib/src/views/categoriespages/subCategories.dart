import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../providers/mockdata/mock_data.dart';
import '../../services/navigation/router.gr.dart';
import '../../widgets/articleCarousel.dart';
import '../../widgets/article_tile.dart';
import '../../widgets/categoriesTopBar.dart';

/// SubCategories of various Categories
class SubCategories extends StatelessWidget {

  /// [PathParam] SubCategories of various Categories
  SubCategories({
    @PathParam() required this.category,
    @PathParam() required this.subCategory,
  });

  final String category;
  final String subCategory;


  /// Instance of [Post]
  final articles = Post.posts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoriesTopBar(category: category, isCategory: false, subCategory: subCategory,),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      ArticleCarousel(),

                      SizedBox(height: 20.0),

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
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
