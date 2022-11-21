import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/constants/categories.dart';

class CategoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CategoryAppBar({
    Key? key,
    required this.category,
    required this.tabController,
  }) : super(key: key);

  final String category;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:
          Text(Categories.allCategoryNames[Categories.categoryIds[category]!]!),
      bottom: TabBar(
        controller: tabController,
        isScrollable: true,
        tabs: [
          Tab(text: 'All'),
          ...(Categories.subCategoryIdsByCategory[category]!
              .map((e) => Tab(text: Categories.allCategoryNames[e]!))
              .toList()),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(SizeConfig.safeBlockVertical! * 12);
}
