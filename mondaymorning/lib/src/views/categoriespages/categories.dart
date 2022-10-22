import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/services/graphql/queries/category/getArticlesByCategories.dart';
import 'package:mondaymorning/src/utils/dummy/articles.dart';
import 'package:mondaymorning/src/widgets/articleCarousel.dart';

import '../../services/navigation/router.gr.dart';
import '../../utils/routes.dart';
import '../../widgets/article_tile.dart';
import 'package:mondaymorning/src/providers/mockdata/mock_data.dart';

class Categories extends StatelessWidget {
  Categories({
    required this.category,
  });

  final String category;

  /// Instance of [Post]
  // final articles = Post.posts;
  final List<String> categories = <String>[];

  @override
  void initState() {
    getArticles();
  }

  Future<void> getArticles() async {
    try {
      final result = await GraphQLService().query(query: QueryOptions(
        document: gql(getArticlesByCategoriesQuery.getArticlesByCategories),
        variables: {
          'limit' : 2,
          'categoryNumbers' : [categoriesRoutes[category]?.idNumber,...?categoriesRoutes[category]?.subCategoriesIds],
        },
      ),
      );


      final articles = result.data;

      // final featured = <ArticleIssue>[];
      // final latest = <ArticleIssue>[];
      //
      // final latestIssue = LatestIssue(
      //   id: articles!['getLatestIssues']['id'] as String,
      //   featured: articles['getLatestIssues']['featured'] as List<ArticleIssue>,
      //   articles: articles['getLatestIssues']['articles'] as List<ArticleIssue>
      // );

      print(articles);

      // for (final element in articles) {
      //   articleList.add(
      //     MMArticle(
      //       id: element['id'] as String,
      //       title: element['title'] as String,
      //       imageUrl: element['coverMedia']['rectangle']['storePath'] as String,
      //     ),
      //   );
      // }

      return;
    } catch (e) {
      rethrow;
    }
  }


  @override
  Widget build(BuildContext context) {

    subCategoriesRoutes[category]?.values.toList().forEach((element) {
      categories.add(element.name);
    });

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              ArticleCarousel(featured: DummyData.articles,),

              // SizedBox(height: 20.0),

              // ElevatedButton(
              //   onPressed: (){
              //     getArticles();
              //   },
              //   child: Text(
              //       "Query Data"
              //   ),
              // ),

              for (int i = 0; i < categories.length; i++)
                SubSection(category: category,subCategory: categories[i])
            ],
          ),
        ),
      ),
    );
  }
}

class SubSection extends StatelessWidget {
  SubSection({required this.category, required this.subCategory});

  final String category;
  final String subCategory;

  /// Instance of [Post]
  final articles = DummyData.articles;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(subCategory, style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),),
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
          for (int i = 1; i < articles.length-1; i++)
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
