import 'package:flutter/material.dart';
import 'package:mondaymorning/ui/home_view.dart';

/// Contains all the routes for navigation.
class AppRouter {
  /// Route for add alarm view.
  static const String homeViewRoute = 'home_view';

  /// Generate routes used in the app.
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeViewRoute:
        return PageRouteBuilder<dynamic>(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              const HomeView(),
        );
      default:
        return MaterialPageRoute<Widget>(
          builder: (BuildContext context) => Scaffold(
            body: Center(
              child: Text('No path for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
