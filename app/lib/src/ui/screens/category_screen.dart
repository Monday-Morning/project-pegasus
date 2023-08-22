import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/constants/categories.dart';
import 'package:mondaymorning/src/ui/components/article/article_carousel.dart';
import 'package:mondaymorning/src/ui/components/category/sub_category_section.dart';

@RoutePage<dynamic>(name: 'AllCategoryRoute')
class CategoryScreen extends StatelessWidget {
  final List<List<Article>> articles;
  final String category;

  CategoryScreen({super.key, required this.articles, required this.category});

  late final List<int> categoriesIds =
      Categories.subCategoryIdsByCategory[category]!.toList();

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(articles);
    }

    final singleListOfArticles =
        articles.reduce((prev, cur) => [...prev, ...cur]);
    final uniqueArticles = singleListOfArticles
        .sublist(0, (singleListOfArticles.length / 2).round())
        .toSet()
        .toList();
    final featuredArticles =
        uniqueArticles.sublist(0, (uniqueArticles.length / 3).round());

    return SingleChildScrollView(
      padding:
          EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal! * 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: SizeConfig.safeBlockVertical!),
          ArticleCarousel(featured: featuredArticles),
          SizedBox(height: SizeConfig.safeBlockVertical! * 2),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: categoriesIds.length,
            itemBuilder: ((context, i) => SubCategorySection(
                  category: category,
                  subCategoryId: categoriesIds[i],
                  articles: articles,
                  index: i,
                )),
          ),
        ],
      ),
    );
  }
}
