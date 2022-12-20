import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/services/router/mm_router.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/constants/categories.dart';
import 'package:mondaymorning/src/ui/components/article/small_article_card.dart';

class SubCategorySection extends StatelessWidget {
  const SubCategorySection(
      {super.key,
      required this.category,
      required this.subCategoryId,
      required this.articles,
      required this.index});

  final String category;
  final int subCategoryId;
  final int index;
  final List<List<Article>> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal! * 2,
        vertical: SizeConfig.safeBlockVertical!,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                Categories.allCategoryNames[subCategoryId]!,
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal! * 20,
                height: SizeConfig.safeBlockVertical! * 4,
                child: TextButton(
                  onPressed: () {
                    AutoTabsRouter.of(context).setActiveIndex(Categories
                            .subCategoryIdsByCategory[category]!
                            .indexOf(subCategoryId) +
                        1);
                  },
                  child: Text('More'),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, i) => SmallArticleCard(
              article: articles[index][i],
              onTileTap: () {
                AutoRouter.of(context).push(
                  ArticleRoute(
                    articleId: articles[index][i].id,
                  ),
                );
              },
            ),
            itemCount: articles[index].length > 3 ? 3 : articles[index].length,
          ),
        ],
      ),
    );
  }
}
