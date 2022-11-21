import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/squiggle/squiggle.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/categories/categories_app_bar.dart';
import 'package:mondaymorning/src/ui/components/categories/main_categories_grid.dart';
import 'package:mondaymorning/src/ui/components/categories/squiggle_box.dart';

class CategoriesScreen extends StatelessWidget {
  final Squiggle squiggle;

  const CategoriesScreen({super.key, required this.squiggle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CategoriesAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal! * 3,
          ),
          child: Column(
            children: [
              MainCategoriesGrid(),
              SquiggleBox(squiggle: squiggle),
            ],
          ),
        ),
      ),
    );
  }
}
