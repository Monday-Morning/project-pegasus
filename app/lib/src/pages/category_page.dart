import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mondaymorning/src/services/router/mm_router.gr.dart';
import 'package:mondaymorning/src/store/constants/categories.dart';
import 'package:mondaymorning/src/store/states/category_page/category_page_data_type.dart';
import 'package:mondaymorning/src/store/states/category_page/category_page_provider.dart';
import 'package:mondaymorning/src/ui/components/category/category_app_bar.dart';
import 'package:mondaymorning/src/ui/screens/full_error_screen.dart';
import 'package:mondaymorning/src/ui/screens/full_loading_screen.dart';

class CategoryPage extends ConsumerWidget {
  final String category;

  const CategoryPage({
    super.key,
    @PathParam('category') required this.category,
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
        return AutoTabsRouter.tabBar(
          routes: [
            AllCategoryRoute(articles: snapshot.data!.articles),
            ...(Categories.subCategoryIdsByCategory[category]!
                .map(
                  (e) => SubCategoryRoute(
                    subCategory: Categories.allCategoryNames[e]!,
                    subCategoryId: e,
                    articles: snapshot.data!.articles[Categories
                        .subCategoryIdsByCategory[category]!
                        .indexOf(e)
                        .abs()],
                  ),
                )
                .toList()),
          ],
          builder: (context, child, tabController) {
            return Scaffold(
              appBar: CategoryAppBar(
                category: category,
                tabController: tabController,
              ),
              body: child,
            );
          },
        );
      },
    );
  }
}
