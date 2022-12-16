import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/services/router/mm_router.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/article/article_carousel.dart';
import 'package:mondaymorning/src/ui/components/article/small_article_card.dart';

class SubCategoryScreen extends StatelessWidget {
  final String subCategory;
  final int subCategoryId;
  final List<Article> articles;

  const SubCategoryScreen({
    super.key,
    @PathParam('subCategory') required this.subCategory,
    required this.subCategoryId,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(articles);
    }
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                        featured: articles.sublist(
                      0,
                      (articles.length / 2).round(),
                    )),
                    for (int i = (articles.length / 2).round();
                        i < articles.length;
                        i++)
                      SmallArticleCard(
                        article: articles[i],
                        onTileTap: () {
                          AutoRouter.of(context).push(
                            ArticleRoute(
                              articleId: articles[i].id,
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
    );
  }
}
