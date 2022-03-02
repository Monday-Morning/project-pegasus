import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mondaymorning/src/views/categories_view.dart';
import 'package:mondaymorning/src/views/categoriespages/campus_page.dart';
import 'package:mondaymorning/src/views/categoriespages/connect_page.dart';
import 'package:mondaymorning/src/views/expression_view.dart';
import 'package:mondaymorning/src/views/landing_page.dart';
import 'package:mondaymorning/src/views/home_view.dart';
import 'package:mondaymorning/src/views/mock_articles.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<dynamic>(path: '/', page: LandingPage, children: [
      AutoRoute<dynamic>(
        path:'articles',
        name: 'ArticlesRouter',
        page: ArticlesPage,
      ),
      AutoRoute<dynamic>(
        path:'categories',
        name: 'CategoriesRouter',
        page: CategoriesView,
      ),
      AutoRoute<dynamic>(
        path:'expression',
        name: 'ExpressionRouter',
        page: ExpressionView,
      ),
      AutoRoute<dynamic>(
        path:'more',
        name: 'MoreRouter',
        page: HomeView,
      ),
    ],
    ),
    AutoRoute<dynamic>(path: '/campuspage', page: CampusPage),
    AutoRoute<dynamic>(path: '/expressionpage', page: ConnectPage),
  ],
)

/// Manages the navigation and routing of the app
class $AppRouter {}
