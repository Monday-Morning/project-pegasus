import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
  final articles = Post.posts;
  final List<String> categories = <String>[];

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
              ArticleCarousel(),

              SizedBox(height: 20.0),

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
  final articles = Post.posts;

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
              articleTitle: articles[i].title,
              articleDescription: articles[i].description,
              time: articles[i].time,
              author: articles[i].author,
              onTileTap: () {
                context.router.push(
                  FullRouteArticle(postId: articles[i].id),
                );
              },
            ),

          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
