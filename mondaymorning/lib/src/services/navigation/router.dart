import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:mondaymorning/src/views/categories_view.dart';
import 'package:mondaymorning/src/views/categoriespages/sub_categories.dart';
import 'package:mondaymorning/src/views/coming_soon_page.dart';
import 'package:mondaymorning/src/views/categories_full_view.dart';
import 'package:mondaymorning/src/views/full_page_article.dart';
import 'package:mondaymorning/src/views/landing_page.dart';
import 'package:mondaymorning/src/views/more_view.dart';
import 'package:mondaymorning/src/views/home_page.dart';
import 'package:mondaymorning/src/views/morepages/about_mm.dart';
import 'package:mondaymorning/src/views/morepages/terms_and_policies.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<dynamic>(path: '/', page: LandingPage, children: [
      AutoRoute<dynamic>(
        path:'articles',
        name: 'HomeRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute<dynamic>(
            path: '',
            page: HomePage,
          ),
          AutoRoute<dynamic>(
            path: ':postId',
            page: FullPageArticle,
          ),
          AutoRoute<dynamic>(
            path: 'coming_soon_page',
            page: ComingSoonPage,
          ),
        ],
      ),
      AutoRoute<dynamic>(
        path:'categories',
        name: 'CategoriesRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute<dynamic>(
            path: '',
            page: CategoriesView,
          ),
          AutoRoute<dynamic>(
            path: ':categories',
            page: CategoriesPageView,
          ),
          AutoRoute<dynamic>(
            path: ':categories/:subCategories',
            page: SubCategories,
          ),
          AutoRoute<dynamic>(
            path: 'coming_soon_page',
            page: ComingSoonPage,
          ),
        ],
      ),
      AutoRoute<dynamic>(
        path:'expression',
        name: 'ExpressionRouter',
        page: ComingSoonPage,
      ),
      AutoRoute<dynamic>(
        path:'more',
        name: 'MoreRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute<dynamic>(
            path: '',
            page: MoreView,
          ),
          AutoRoute<dynamic>(
            path: 'coming_soon_page',
            page: ComingSoonPage,
          ),
          AutoRoute<dynamic>(
            path: 'about_mm_page',
            page: AboutMMPage,
          ),
          AutoRoute<dynamic>(
            path: 'terms_and_policies_page',
            page: TermsAndPoliciesPage,
          ),
        ],
      ),
    ],
    ),
  ],
)

/// Manages the navigation and routing of the app
class $AppRouter {}
