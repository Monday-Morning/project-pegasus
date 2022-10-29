// ignore_for_file: cascade_invocations

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/providers/mockdata/mock_data.dart';
import 'package:mondaymorning/src/providers/providers.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/services/graphql/queries/category/getArticlesByCategories.dart';
import 'package:mondaymorning/src/services/navigation/router.gr.dart';
import 'package:mondaymorning/src/utils/dummy/articles.dart';
import 'package:mondaymorning/src/utils/routes.dart';
import 'package:mondaymorning/src/widgets/article_carousel.dart';
import 'package:mondaymorning/src/widgets/article_tile.dart';
import 'package:mondaymorning/src/widgets/categories_top_bar.dart';

/// SubCategories of various Categories
class SubCategories extends StatelessWidget {

  /// [PathParam] SubCategories of various Categories
  SubCategories({
    required this.category,
    required this.subCategory,
  });

  final String category;
  final String subCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((subCategoriesRoutes[category]![subCategory]! as SubCategoriesClass).name),
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Consumer(
        builder: (context,ref,child){
          final subCategoryArticles = ref.watch(categoryNotifierProvider(QueryOptions(
            document: gql(getArticlesByCategoriesQuery.getArticlesByCategories),
            variables: {
              'categoryNumbers' : [subCategoriesRoutes[category]?[subCategory]?.idNumber],
              'limit' : 7,
              'offset': 0,
            },
          ),),);

          return subCategoryArticles.when(
                  () => const Center(
                    child: Text('No Articles Available'),
                  ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (articles) => SingleChildScrollView(
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
                              const SizedBox(
                                height: 10.0,
                              ),
                              ArticleCarousel(featured: articles[0].sublist(0,(articles[0].length/2).round(),)),
                              for (int i = (articles[0].length/2).round(); i < articles[0].length; i++)
                                ArticleTile(
                                  article: articles[0][i],
                                  onTileTap: () {
                                    context.router.push(
                                      FullRouteArticle(postId: 1),
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
              error: (error) => Center(
                child: Text(error),
              ),);
        },
      ),
    );
  }
}
