import 'package:auto_route/auto_route.dart';

import 'mm_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class MMRouter {
  RouteType get defaultRouteType => RouteType.material();
  final List<AutoRoute> routes = [
    AutoRoute(path: '/', page: LandingRoute.page, children: [
      AutoRoute(path: 'home', page: HomeRoute.page),
      AutoRoute(path: 'categories', page: CategoriesRoute.page),
      AutoRoute(path: 'expressions', page: ExpressionRoute.page),
      AutoRoute(path: 'more', page: MoreRoute.page),
    ]),
    AutoRoute(path: 'article/:articleId', page: ArticleRoute.page),
    RedirectRoute(
        path: 'article/:articleId/:articleSlug',
        redirectTo: 'article/:articleId'),
    AutoRoute(path: ':category', page: CategoryRoute.page, children: [
      AutoRoute(path: 'all', page: AllCategoryRoute.page),
      AutoRoute(path: ':subCategory', page: SubCategoryRoute.page),
    ]),
    AutoRoute(path: 'about', page: AboutRoute.page),
    AutoRoute(path: 'terms', page: TermsRoute.page, children: [
      AutoRoute(path: 'content', page: ContentRoute.page),
    ]),
    AutoRoute(path: 'commingsoon', page: ExpressionRoute.page),
    AutoRoute(path: '*', page: NotFoundRoute.page),
  ];

  defaultRouteParser() {}

  delegate() {}
}
