import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/article/article_carousel.dart';
import 'package:mondaymorning/src/ui/components/article/small_article_card.dart';

import '../../services/router/mm_router.gr.dart';

@RoutePage<dynamic>(name: 'SubCategoryRoute')
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
    final notFeaturedArticles =
        articles.sublist((articles.length / 2).round(), articles.length);
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
                      ),
                    ),
                    ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: notFeaturedArticles.length,
                      itemBuilder: (context, index) => SmallArticleCard(
                        article: notFeaturedArticles[index],
                        onTileTap: () {
                          AutoRouter.of(context).push(
                            ArticleRoute(
                              articleId: notFeaturedArticles[index].id,
                            ),
                          );
                        },
                      ),
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
