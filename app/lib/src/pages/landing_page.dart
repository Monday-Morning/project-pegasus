import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/services/router/mm_router.gr.dart';
import 'package:mondaymorning/src/store/states/landing_page/landing_page_data_type.dart';
import 'package:mondaymorning/src/store/states/landing_page/landing_page_provider.dart';
import 'package:mondaymorning/src/ui/screens/full_error_screen.dart';
import 'package:mondaymorning/src/ui/screens/full_loading_screen.dart';

class LandingPage extends ConsumerWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return FutureBuilder<LandingPageData>(
      future: ref.watch(landingPageDataProvider.future),
      initialData: null,
      builder: (BuildContext context, AsyncSnapshot<LandingPageData> snapshot) {
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
          print(snapshot.data?.latestIssue);
        }
        return AutoTabsScaffold(
          routes: [
            HomeRoute(data: snapshot.data!),
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
              selectedItemColor:
                  Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
              unselectedItemColor: Theme.of(context)
                  .bottomNavigationBarTheme
                  .unselectedItemColor,
              backgroundColor:
                  Theme.of(context).bottomNavigationBarTheme.backgroundColor,
              type: BottomNavigationBarType.fixed,
            );
          },
        );
      },
    );
  }
}
