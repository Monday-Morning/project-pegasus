import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/services/router/mm_router.gr.dart';
import 'package:mondaymorning/src/store/states/landing_page/landing_page_data_type.dart';
import 'package:mondaymorning/src/store/states/landing_page/landing_page_provider.dart';
import 'package:mondaymorning/src/ui/components/home/landing_bottom_bar.dart';
import 'package:mondaymorning/src/ui/screens/full_error_screen.dart';
import 'package:mondaymorning/src/ui/screens/full_loading_screen.dart';

class LandingPage extends ConsumerWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return FutureBuilder<LandingPageData>(
      future: ref.read(landingPageDataProvider.future),
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
            CategoriesRoute(squiggle: snapshot.data!.latestSquiggle),
            ExpressionRouter(),
            MoreRouter(),
          ],
          bottomNavigationBuilder: (context, tabsRouter) {
            return LandingBottomBar(tabsRouter: tabsRouter);
          },
        );
      },
    );
  }
}
