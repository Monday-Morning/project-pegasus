import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mondaymorning/src/pages/article_page.dart';
import 'package:mondaymorning/src/pages/category_page.dart';
import 'package:mondaymorning/src/pages/full_error_page.dart';
import 'package:mondaymorning/src/pages/landing_page.dart';
import 'package:mondaymorning/src/ui/screens/categories_screen.dart';
import 'package:mondaymorning/src/ui/screens/home_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<dynamic>(
      path: '/',
      name: 'LandingRoute',
      page: LandingPage,
      initial: true,
      children: [
        AutoRoute<dynamic>(
          path: 'home',
          name: 'HomeRoute',
          page: HomeScreen,
        ),
        AutoRoute<dynamic>(
          path: 'categories',
          name: 'CategoriesRoute',
          page: CategoriesScreen,
          // children: [
          // AutoRoute<dynamic>(
          //   path: 'campus',
          //   name: 'CampusRoute',
          //   page: EmptyRouterPage,
          // ),
          // AutoRoute<dynamic>(
          //   path: 'connect',
          //   name: 'ConnectRoute',
          //   page: EmptyRouterPage,
          // ),
          // AutoRoute<dynamic>(
          //   path: 'ddcwc',
          //   name: 'DDCWCRoute',
          //   page: EmptyRouterPage,
          // ),
          // AutoRoute<dynamic>(
          //   path: 'career',
          //   name: 'CareerRoute',
          //   page: EmptyRouterPage,
          // ),
          // AutoRoute<dynamic>(
          //   path: 'alumni',
          //   name: 'AlumniRoute',
          //   page: EmptyRouterPage,
          // ),
          // ],
        ),
        AutoRoute<dynamic>(
          path: 'expressions',
          name: 'ExpressionRoute',
          page: FullErrorPage,
        ),
        AutoRoute<dynamic>(
          path: 'more',
          name: 'MoreRoute',
          page: FullErrorPage,
        ),
      ],
    ),
    AutoRoute<dynamic>(
      path: 'article/:articleId',
      name: 'ArticleRoute',
      page: ArticlePage,
    ),
    AutoRoute<dynamic>(
      path: ':category',
      name: 'CategoryRoute',
      page: CategoryPage,
      children: [
        AutoRoute<dynamic>(
          path: ':subCategory',
          name: 'SubCategoryRoute',
          page: CategoryPage,
        ),
      ],
    ),
    AutoRoute<dynamic>(
      path: '*',
      name: 'NotFoundRoute',
      page: FullErrorPage,
    ),
  ],
)
class $MMRouter {}
