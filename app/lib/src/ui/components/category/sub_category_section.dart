import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/services/router/mm_router.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
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
          vertical: SizeConfig.safeBlockVertical!),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                Categories.allCategoryNames[subCategoryId]!,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal! * 20,
                height: SizeConfig.safeBlockVertical! * 4,
                child: ElevatedButton(
                  onPressed: () {
                    AutoRouter.of(context).push(SubCategoryRoute(
                        subCategory:
                            Categories.allCategoryNames[subCategoryId]!,
                        subCategoryId: subCategoryId,
                        articles: articles[Categories
                            .subCategoryIdsByCategory[category]!
                            .indexOf(subCategoryId)
                            .abs()]));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF006DCC)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          Theme.of(context).extension<REMSpace>()!.get(2),
                        ),
                      ),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text('More'),
                ),
              )
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          for (int i = 0;
              i < ((articles[index].length > 3) ? 3 : articles[index].length);
              i++)
            SmallArticleCard(
              article: articles[index][i],
              onTileTap: () {
                AutoRouter.of(context).push(
                  ArticleRoute(
                    articleId: articles[index][i].id,
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
