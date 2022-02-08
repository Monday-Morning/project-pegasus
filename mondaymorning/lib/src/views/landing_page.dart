/// LandingPage : has navigation routes to the 4 primary section Home, Categories, Expressions, More

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/navigation/router.gr.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, tabsRouter) => AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        title: Text(
          'Monday Morning',
          style: TextStyle(
            color: Theme.of(context).appBarTheme.foregroundColor,
          ),
        ),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
      routes: [
        ArticlesRouter(),
        CategoriesRouter(),
        ExpressionRouter(),
        MoreRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
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
          unselectedItemColor:
          Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
          backgroundColor:
          Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          type: BottomNavigationBarType.fixed,
        );
      },
    );
  }
}
