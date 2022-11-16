import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/services/routes.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/article/article_carousel.dart';
import 'package:mondaymorning/src/ui/components/article/small_article_card.dart';
import 'package:mondaymorning/src/ui/components/category/category_top_bar.dart';
import 'package:mondaymorning/src/services/router/mm_router.gr.dart';

/// SubCategories of various Categories
class FullSubCategoriesPage extends StatelessWidget {
  /// [PathParam] SubCategories of various Categories
  const FullSubCategoriesPage(
      {super.key,
      required this.category,
      required this.subCategory,
      required this.articles});

  final String category;
  final String subCategory;
  final List<List<Article>> articles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((subCategoriesRoutes[category]![subCategory]!).name),
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoriesTopBar(
              category: category,
              isCategory: false,
              subCategory: subCategory,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal! * 2,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        height: SizeConfig.safeBlockHorizontal! * 2,
                      ),
                      ArticleCarousel(
                          featured: articles[0].sublist(
                        0,
                        (articles[0].length / 2).round(),
                      )),
                      for (int i = (articles[0].length / 2).round();
                          i < articles[0].length;
                          i++)
                        SmallArticleCard(
                          article: articles[0][i],
                          onTileTap: () {
                            AutoRouter.of(context).push(
                              ArticleRoute(
                                articleId: articles[0][i].id,
                              ),
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
