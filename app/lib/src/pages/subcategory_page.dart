import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mondaymorning/src/pages/full_error_page.dart';
import 'package:mondaymorning/src/pages/full_loading_page.dart';
import 'package:mondaymorning/src/services/routes.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/states/category_page/category_page_data_type.dart';
import 'package:mondaymorning/src/store/states/category_page/category_page_provider.dart';
import 'package:mondaymorning/src/ui/components/category/full_subcategory_page.dart';

class SubCategoryPage extends ConsumerWidget {
  final String category;
  final String subCategory;
  const SubCategoryPage(
      {super.key, required this.category, required this.subCategory});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return FutureBuilder<CategoryPageData>(
      future: ref.watch(categoryPageDataProvider(categoryId: [
        subCategoriesRoutes[category]![subCategory]!.idNumber
      ], limit: 2)
          .future),
      initialData: null,
      builder:
          (BuildContext context, AsyncSnapshot<CategoryPageData> snapshot) {
        if (snapshot.hasError) {
          if (kDebugMode) {
            print(snapshot.error);
          }
          return FullErrorPage();
        }
        if (snapshot.hasData) {
          if (kDebugMode) {
            print(snapshot.data?.articles);
          }
          return FullSubCategoriesPage(
            articles: snapshot.data!.articles,
            category: category,
            subCategory: subCategory,
          );
        }
        return FullLoadingPage();
      },
    );
  }
}
