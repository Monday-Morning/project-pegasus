import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mondaymorning/src/views/categories_view.dart';
import 'package:mondaymorning/src/views/categoriespages/alumni_page.dart';
import 'package:mondaymorning/src/views/categoriespages/campus_page.dart';
import 'package:mondaymorning/src/views/categoriespages/career_page.dart';
import 'package:mondaymorning/src/views/categoriespages/connect_page.dart';
import 'package:mondaymorning/src/views/categoriespages/ddandcwc_page.dart';
import 'package:mondaymorning/src/views/categoriespages/expression_page.dart';
import 'package:mondaymorning/src/views/categoriespages/webview.dart';
import 'package:mondaymorning/src/views/coming_soon_page.dart';
import 'package:mondaymorning/src/views/expression_view.dart';
import 'package:mondaymorning/src/views/full_page_article.dart';
import 'package:mondaymorning/src/views/landing_page.dart';
import 'package:mondaymorning/src/views/home_view.dart';
import 'package:mondaymorning/src/views/mock_articles.dart';
import 'package:mondaymorning/src/views/morepages/about_mm.dart';
import 'package:mondaymorning/src/views/morepages/terms_and_policies.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<dynamic>(path: '/', page: LandingPage, children: [
      AutoRoute<dynamic>(
        path:'articles',
        name: 'ArticlesRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute<dynamic>(
            path: '',
            page: ArticlesPage,
          ),
          AutoRoute<dynamic>(
            path: ':postId',
            page: FullPageArticle,
          ),
          AutoRoute<dynamic>(
            path: ':coming_soon_page',
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
            path: ':campus_page',
            page: CampusPage,
          ),
          AutoRoute<dynamic>(
            path: ':connect',
            page: ConnectPage,
          ),
          AutoRoute<dynamic>(
            path: ':ddcwc_page',
            page: DdcwcPage,
          ),
          AutoRoute<dynamic>(
            path: ':career_page',
            page: CareerPage,
          ),
          AutoRoute<dynamic>(
            path: ':alumni_page',
            page: AlumniPage,
          ),
          AutoRoute<dynamic>(
            path: ':expression_page',
            page: ExpressionPage,
          ),
          AutoRoute<dynamic>(
            path: ':coming_soon_page',
            page: ComingSoonPage,
          ),
        ],
      ),
      AutoRoute<dynamic>(
        path:'expression',
        name: 'ExpressionRouter',
        page: ExpressionView,
      ),
      AutoRoute<dynamic>(
        path:'more',
        name: 'MoreRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute<dynamic>(
            path: '',
            page: HomeView,
          ),
          AutoRoute<dynamic>(
            path: ':coming_soon_page',
            page: ComingSoonPage,
          ),
          AutoRoute<dynamic>(
            path: ':about_mm_page',
            page: AboutMMPage,
          ),
          AutoRoute<dynamic>(
            path: ':terms_and_policies_page',
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
