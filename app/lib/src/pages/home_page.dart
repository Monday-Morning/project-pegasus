import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mondaymorning/src/pages/full_error_page.dart';
import 'package:mondaymorning/src/pages/full_loading_page.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/services/router/mm_router.gr.dart';
import 'package:mondaymorning/src/store/states/home_page/home_page_data_type.dart';
import 'package:mondaymorning/src/store/states/home_page/home_page_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return FutureBuilder<HomePageData>(
      future: ref.watch(homePageDataProvider.future),
      initialData: null,
      builder: (BuildContext context, AsyncSnapshot<HomePageData> snapshot) {
        if (snapshot.hasError) {
          if (kDebugMode) {
            print(snapshot.error);
          }
          return FullErrorPage();
        }
        if (snapshot.hasData) {
          if (kDebugMode) {
            print(snapshot.data?.latestIssue);
          }
          return AutoTabsScaffold(
            routes: [
              HomeScreenRoute(),
              CategoriesRoute(),
              ExpressionRouter(),
              MoreRouter(),
            ],
            bottomNavigationBuilder: (context, tabsRouter) {
              return BottomNavigationBar(
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_outlined,
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.category_outlined,
                    ),
                    label: 'Categories',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_balance_outlined,
                    ),
                    label: 'Expressions',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.workspaces_outline,
                    ),
                    label: 'More',
                  ),
                ],
                selectedItemColor: Theme.of(context)
                    .bottomNavigationBarTheme
                    .selectedItemColor,
                unselectedItemColor: Theme.of(context)
                    .bottomNavigationBarTheme
                    .unselectedItemColor,
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                type: BottomNavigationBarType.fixed,
              );
            },
          );
        }
        return FullLoadingPage();
      },
    );
  }
}
