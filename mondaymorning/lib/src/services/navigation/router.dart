import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mondaymorning/src/views/categories_view.dart';
import 'package:mondaymorning/src/views/expression_view.dart';
import 'package:mondaymorning/src/views/home_page.dart';
import 'package:mondaymorning/src/views/home_view.dart';
import 'package:mondaymorning/src/views/mock_articles.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(path: '/', page: HomePage, children: [
      AutoRoute(
        path:'articles',
        name: 'ArticlesRouter',
        page: ArticlesPage,
      ),
      AutoRoute(
        path:'categories',
        name: 'CategoriesRouter',
        page: CategoriesView,
      ),
      AutoRoute(
        path:'expression',
        name: 'ExpressionRouter',
        page: ExpressionView,
      ),
      AutoRoute(
        path:'more',
        name: 'MoreRouter',
        page: HomeView,
      ),
    ],
    ),
  ],
)

/// Manages the navigation and routing of the app
class $AppRouter {}