import 'package:auto_route/auto_route_annotations.dart';
import 'package:mondaymorning/ui/views/home/home_view.dart';

/// Defines the routes used in the app.
@MaterialAutoRouter(
  routes: <AutoRoute>[
    /// Initial route. Pushes [HomeView].
    MaterialRoute(page: HomeView, initial: true),
  ],
)
class $AppRouter {}
