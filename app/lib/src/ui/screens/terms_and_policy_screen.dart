import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/router/mm_router.dart';
import 'package:mondaymorning/src/ui/components/terms/terms_app_bar.dart';
import 'package:mondaymorning/src/ui/components/terms/terms_content.dart';

@RoutePage<dynamic>(name: 'TermsRoute')
class TermsAndPoliciesScreen extends StatelessWidget {
  const TermsAndPoliciesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [
        ...(categories
            .map(
              (e) => ContentRoute(id: e.id),
            )
            .toList()),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          appBar: TermsAppBar(
            tabController: tabController,
          ),
          body: child,
        );
      },
    );
  }
}
