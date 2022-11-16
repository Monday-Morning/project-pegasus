import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:mondaymorning/src/pages/article_page.dart';
import 'package:mondaymorning/src/pages/categories_page.dart';
import 'package:mondaymorning/src/pages/category_page.dart';
import 'package:mondaymorning/src/pages/home_page.dart';
// import 'package:mondaymorning/src/pages/landing_page.dart';
import 'package:mondaymorning/src/pages/subcategory_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<dynamic>(
      path: '/',
      name: 'HomeRoute',
      page: HomePage,
      initial: true,
      children: [
        AutoRoute<dynamic>(
          path: 'home',
          name: 'HomeScreenRoute',
          page: EmptyRouterPage,
        ),
        AutoRoute<dynamic>(
          path: 'categories',
          name: 'CategoriesRoute',
          page: EmptyRouterPage,
          children: [
            AutoRoute<dynamic>(
              path: '',
              name: 'AllCategoryRoute',
              page: CategoriesPage,
            ),
            AutoRoute<dynamic>(
              path: ':category',
              name: 'CategoryRoute',
              page: CategoryPage,
            ),
            AutoRoute<dynamic>(
              path: ':category/:subCategory',
              name: 'SubCategoryRoute',
              page: SubCategoryPage,
            ),
          ],
        ),
        AutoRoute<dynamic>(
          path: 'expressions',
          name: 'ExpressionRouter',
          page: EmptyRouterPage,
        ),
        AutoRoute<dynamic>(
          path: 'more',
          name: 'MoreRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute<dynamic>(
              path: '',
              name: 'More',
              page: EmptyRouterPage,
            ),
          ],
        ),
      ],
    ),
    AutoRoute<dynamic>(
      path: 'article/:articleId',
      name: 'ArticleRoute',
      page: ArticlePage,
    ),
  ],
)
class $MMRouter {}
