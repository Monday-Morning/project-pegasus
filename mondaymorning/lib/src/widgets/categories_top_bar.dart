import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/themes/colors.dart';

import '../services/navigation/router.gr.dart';
import '../utils/routes.dart';


class CategoriesTopBar extends StatelessWidget {
  CategoriesTopBar({
    required this.category,
    required this.isCategory,
    this.subCategory = '',
  });

  final String category;
  final bool isCategory;
  final String subCategory;


  List<String> categories = ['All'];

  @override
  Widget build(BuildContext context) {

    subCategoriesRoutes[category]?.values.toList().forEach((element) {
      categories.add(element.shortName);
    });

    return Container(
      height: 40.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    if(categories[index] != 'All') context.router.replace(SubCategories(category: category, subCategory: categories[index]),);
                    else context.router.replace(CategoriesRouteView(categories: category),);
                  },
                  child: Text(categories[index] != 'All' ? ((subCategoriesRoutes[category]![categories[index]] as SubCategoriesClass).name.toString()) : 'All',
                    style: ((isCategory && categories[index] == 'All') || (categories[index] == subCategory)) ? TextStyle(fontSize: 18, color: Theme.of(context).primaryColor): TextStyle(fontSize: 18, color: AppColors.kGrey70),
                  ),
                  ),
                ),
              );
          }
      ),
    );
  }
}


