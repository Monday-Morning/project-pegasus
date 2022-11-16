import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/services/routes.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/article/article_carousel.dart';
import 'package:mondaymorning/src/ui/components/category/sub_category_section.dart';

class FullCategoryPage extends StatelessWidget {
  final List<List<Article>> articles;
  final String category;

  final List<String> categories = <String>[];

  FullCategoryPage({super.key, required this.articles, required this.category});
  @override
  Widget build(BuildContext context) {
    final singleListOfArticles =
        articles.reduce((prev, cur) => [...prev, ...cur]);
    final uniqueArticles = singleListOfArticles
        .sublist(0, (singleListOfArticles.length / 2).round())
        .toSet()
        .toList();
    final featuredArticles =
        uniqueArticles.sublist(0, (uniqueArticles.length / 2).round());

    subCategoriesRoutes[category]?.values.toList().forEach((element) {
      categories.add(element.shortName);
    });

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
          for (int i = 0; i < categories.length; i++)
            SubCategorySection(
              category: category,
              subCategory: categories[i],
              articles: articles[i],
            )
        ],
      ),
    );
  }
}
