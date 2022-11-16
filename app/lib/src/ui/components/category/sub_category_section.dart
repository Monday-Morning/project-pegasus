import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/services/routes.dart';
import 'package:mondaymorning/src/services/router/mm_router.gr.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';

class SubCategorySection extends StatelessWidget {
  const SubCategorySection(
      {super.key,
      required this.category,
      required this.subCategory,
      required this.articles});

  final String category;
  final String subCategory;
  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal! * 2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                (subCategoriesRoutes[category]![subCategory]
                        as SubCategoriesClass)
                    .name,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal! * 20,
                height: SizeConfig.safeBlockVertical! * 4,
                child: ElevatedButton(
                  onPressed: () {
                    AutoRouter.of(context).push(SubCategoryRoute(
                        category: category, subCategory: subCategory));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF006DCC)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            Theme.of(context).extension<REMSpace>()!.get(2)))),
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
          // for (int i = 0; i < articles.length; i++)
          // ArticleTile(
          //   article: articles[i],
          //   onTileTap: () {
          //     context.router.push(
          //       FullRouteArticle(postId: 1),
          //     );
          //   },
          // ),

          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
