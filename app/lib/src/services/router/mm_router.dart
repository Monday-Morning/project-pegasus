import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/api/models/squiggle/squiggle.dart';
import 'package:mondaymorning/src/pages/article_page.dart';
import 'package:mondaymorning/src/pages/category_page.dart';
import 'package:mondaymorning/src/pages/full_error_page.dart';
import 'package:mondaymorning/src/pages/landing_page.dart';
import 'package:mondaymorning/src/store/states/landing_page/landing_page_data_type.dart';
import 'package:mondaymorning/src/ui/screens/about_screen.dart';
import 'package:mondaymorning/src/ui/components/terms/content_screen.dart';
import 'package:mondaymorning/src/ui/screens/categories_screen.dart';
import 'package:mondaymorning/src/ui/screens/category_screen.dart';
import 'package:mondaymorning/src/ui/screens/coming_soon_screen.dart';
import 'package:mondaymorning/src/ui/screens/home_screen.dart';
import 'package:mondaymorning/src/ui/screens/more_screen.dart';
import 'package:mondaymorning/src/ui/screens/sub_category_screen.dart';
import 'package:mondaymorning/src/ui/screens/terms_and_policy_screen.dart';

part 'mm_router.gr.dart';

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
          page: ComingSoonScreen,
        ),
        AutoRoute<dynamic>(
          path: 'more',
          name: 'MoreRoute',
          page: MoreScreen,
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
          path: 'all',
          name: 'AllCategoryRoute',
          page: CategoryScreen,
        ),
        AutoRoute<dynamic>(
          path: ':subCategory',
          name: 'SubCategoryRoute',
          page: SubCategoryScreen,
        ),
      ],
    ),
    AutoRoute(
      path: 'about',
      name: 'AboutRoute',
      page: AboutMMScreen,
    ),
    AutoRoute<dynamic>(
      path: 'terms',
      name: 'TermsRoute',
      page: TermsAndPoliciesScreen,
      children: [
        AutoRoute<dynamic>(
          path: 'content',
          name: 'ContentRoute',
          page: ContentScreen,
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
class MMRouter extends _$MMRouter {}
