import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/models/category/category.dart';
import 'package:mondaymorning/src/models/issues/article_issue.dart';
import 'package:mondaymorning/src/providers/mockdata/mock_data.dart';
import 'package:mondaymorning/src/providers/providers.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/services/graphql/queries/category/getArticlesByCategories.dart';
import 'package:mondaymorning/src/services/navigation/router.gr.dart';
import 'package:mondaymorning/src/utils/dummy/articles.dart';
import 'package:mondaymorning/src/utils/routes.dart';
import 'package:mondaymorning/src/widgets/article_carousel.dart';
import 'package:mondaymorning/src/widgets/article_tile.dart';

class Categories extends StatelessWidget {
  Categories({
    required this.category,
  });

  final String category;

  final List<String> categories = <String>[];

  @override
  Widget build(BuildContext context) {

    subCategoriesRoutes[category]?.values.toList().forEach((element) {
      categories.add(element.shortName);
    });

    return Consumer(builder: (context,ref, child){
      final categoryArticle = ref.watch(categoryNotifierProvider(QueryOptions(
        document: gql(getArticlesByCategoriesQuery.getArticlesByCategories),
        variables: {
          'limit' : 2,
          'categoryNumbers' : [categoriesRoutes[category]?.idNumber,...?categoriesRoutes[category]?.subCategoriesIds],
        },
      ),),);
      
      return categoryArticle.when(
              () => const Center(
                child: Text('No Articles Available'),
              ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          success: (articles){
                final singleListOfArticles = articles.reduce((prev, cur) => [...prev, ...cur]);
                final uniqueArticles = singleListOfArticles.sublist(0,(singleListOfArticles.length/2).round()).toSet().toList();
                final featuredArticles = uniqueArticles.sublist(0,(uniqueArticles.length/2).round());
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const SizedBox(
                            height: 10.0,
                          ),
                          ArticleCarousel(featured: featuredArticles,),

                          SizedBox(height: 20.0),

                          for (int i = 0; i < categories.length; i++)
                            SubSection(category: category,subCategory: categories[i], articles: articles[i],)
                        ],
                      ),
                    ),
                  ),
                );
          },
          error: (error) => Center(
            child: Text(error),
        ),
      );
    },
    );
  }
}

class SubSection extends StatelessWidget {
  SubSection({required this.category, required this.subCategory, required this.articles});

  final String category;
  final String subCategory;
  final List<ArticleIssue> articles;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text((subCategoriesRoutes[category]![subCategory] as SubCategoriesClass).name, style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),),
              ElevatedButton(
                onPressed: () {
                  context.router.push(SubCategories(category: category,subCategory: subCategory));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff008dff)),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                ),
                child: Text('More'),
              )
            ],
          ),
          SizedBox(height: 5.0,),
          for (int i = 0; i < articles.length; i++)
            ArticleTile(
              article: articles[i],
              onTileTap: () {
                context.router.push(
                  FullRouteArticle(postId: 1),
                );
              },
            ),

          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
