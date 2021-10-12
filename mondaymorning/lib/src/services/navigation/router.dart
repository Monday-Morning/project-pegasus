import 'package:auto_route/annotations.dart';
import 'package:mondaymorning/src/views/articles_view.dart';
import 'package:mondaymorning/src/views/home_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<HomeView>(page: HomeView, initial: true),
    AutoRoute<ArticlesView>(page: ArticlesView),
  ],
)

/// Manages the navigation and routing of the app
class $AppRouter {}
