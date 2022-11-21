import 'package:auto_route/annotations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';

class SubCategoryScreen extends StatelessWidget {
  final String subCategory;
  final int subCategoryId;
  final List<Article> articles;

  const SubCategoryScreen({
    super.key,
    @PathParam('subCategory') required this.subCategory,
    required this.subCategoryId,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(articles);
    }
    return Center(
        child:
            Text('SubCategory ID: $subCategoryId\nSubCategory: $subCategory'));
  }
}
