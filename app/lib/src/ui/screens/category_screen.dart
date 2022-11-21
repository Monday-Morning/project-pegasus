import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';

class CategoryScreen extends StatelessWidget {
  final List<List<Article>> articles;

  const CategoryScreen({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(articles);
    }
    return Center(child: Text('All Category'));
  }
}
