import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mondaymorning/src/pages/full_error_page.dart';
import 'package:mondaymorning/src/pages/full_loading_page.dart';
import 'package:mondaymorning/src/services/routes.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/states/category_page/category_page_data_type.dart';
import 'package:mondaymorning/src/store/states/category_page/category_page_provider.dart';
import 'package:mondaymorning/src/ui/screens/category_screen.dart';

class CategoryPage extends ConsumerWidget {
  final String category;
  const CategoryPage({super.key, required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return FutureBuilder<CategoryPageData>(
      future: ref.watch(categoryPageDataProvider(categoryId: [
        categoriesRoutes[category]!.idNumber,
        ...?categoriesRoutes[category]?.subCategoriesIds
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
          return CategoryScreen(
            data: snapshot.data!,
            category: category,
          );
        }
        return FullLoadingPage();
      },
    );
  }
}
