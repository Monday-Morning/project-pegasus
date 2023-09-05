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

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class MMRouter extends _$MMRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LandingRoute.page,
          path: '/',
          initial: true,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: 'home',
            ),
            AutoRoute(
              page: CategoriesRoute.page,
              path: 'categories',
            ),
            AutoRoute(
              page: ExpressionRoute.page,
              path: 'expressions',
            ),
            AutoRoute(
              page: MoreRoute.page,
              path: 'more',
            ),
          ],
        ),
        AutoRoute(
          page: ArticleRoute.page,
          path: '/article/:articleId',
        ),
        RedirectRoute(
          path: '/article/:articleId/:articleSlug',
          redirectTo: 'article/:articleId',
        ),
        AutoRoute(
          page: CategoryRoute.page,
          path: '/:category',
          children: [
            AutoRoute(
              page: AllCategoryRoute.page,
              path: 'all',
            ),
            AutoRoute(
              page: SubCategoryRoute.page,
              path: ':subCategory',
            ),
          ],
        ),
        AutoRoute(
          page: AboutRoute.page,
          path: '/about',
        ),
        AutoRoute(
          page: TermsRoute.page,
          path: '/terms',
          children: [
            AutoRoute(
              page: ContentRoute.page,
              path: 'content',
            ),
          ],
        ),
        AutoRoute(
          page: ExpressionRoute.page,
          path: '/commingsoon',
        ),
        AutoRoute(
          page: NotFoundRoute.page,
          path: '/*',
        ),
      ];
}
