import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mondaymorning/src/store/constants/categories.dart';
import 'package:mondaymorning/src/store/states/category_page/category_page_data_type.dart';
import 'package:mondaymorning/src/store/states/category_page/category_page_provider.dart';
import 'package:mondaymorning/src/ui/screens/full_error_screen.dart';
import 'package:mondaymorning/src/ui/screens/full_loading_screen.dart';

class CategoryPage extends ConsumerWidget {
  final String category;

  const CategoryPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder<CategoryPageData>(
      future: ref.read(categoryPageDataProvider(
        categoryIds: Categories.subCategoryIdsByCategory[category]!,
      ).future),
      initialData: null,
      builder:
          (BuildContext context, AsyncSnapshot<CategoryPageData> snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return FullLoadingScreen();
        }
        if (snapshot.hasError || !snapshot.hasData) {
          if (kDebugMode) {
            print(snapshot.error);
          }
          return FullErrorScreen();
        }
        if (kDebugMode) {
          print(snapshot.data?.articles);
        }
        return Container();
      },
    );
  }
}
