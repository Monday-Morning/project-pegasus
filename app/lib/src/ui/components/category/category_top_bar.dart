import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/routes.dart';
import 'package:mondaymorning/src/services/router/mm_router.gr.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';

// ignore: must_be_immutable
class CategoriesTopBar extends StatelessWidget {
  CategoriesTopBar({
    super.key,
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

    return SizedBox(
      height: SizeConfig.safeBlockVertical! * 5,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal!),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    if (categories[index] != 'All') {
                      AutoRouter.of(context).replace(
                        SubCategoryRoute(
                            category: category, subCategory: categories[index]),
                      );
                    } else {
                      AutoRouter.of(context).replace(
                        CategoryRoute(category: category),
                      );
                    }
                  },
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  child: Text(
                    categories[index] != 'All'
                        ? ((subCategoriesRoutes[category]![categories[index]]
                                as SubCategoriesClass)
                            .name
                            .toString())
                        : 'All',
                    style: ((isCategory && categories[index] == 'All') ||
                            (categories[index] == subCategory))
                        ? TextStyle(
                            fontSize: 18, color: Theme.of(context).primaryColor)
                        : TextStyle(fontSize: 18, color: Color(0xff6E6E6E)),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
