import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/routes.dart';
import 'package:mondaymorning/src/store/states/category_page/category_page_data_type.dart';
import 'package:mondaymorning/src/ui/components/category/category_top_bar.dart';
import 'package:mondaymorning/src/ui/components/category/full_category_page.dart';

class CategoryScreen extends StatelessWidget {
  final CategoryPageData data;
  final String category;

  const CategoryScreen({super.key, required this.data, required this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoriesRoutes[category]!.name),
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoriesTopBar(
              category: category,
              isCategory: true,
            ),
            FullCategoryPage(
              articles: data.articles,
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
