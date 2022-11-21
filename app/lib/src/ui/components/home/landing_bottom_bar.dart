import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class LandingBottomBar extends StatelessWidget {
  final TabsRouter tabsRouter;

  const LandingBottomBar({
    Key? key,
    required this.tabsRouter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        // TODO: use correct icons as per design
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
  }
}
