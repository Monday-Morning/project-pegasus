import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/views/categoriespages/categories.dart';
import 'package:mondaymorning/src/widgets/categoriesTopBar.dart';

/// Categories View widget of the app.
class CategoriesPageView extends StatelessWidget {

  /// [PathParam] Categories View widget of the app.
  CategoriesPageView({
    @PathParam() required this.categories,
  });

  final String categories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoriesTopBar(category: categories,isCategory: true,),
            Categories(category: categories,),
          ],
        ),
      ),
    );
  }
}
