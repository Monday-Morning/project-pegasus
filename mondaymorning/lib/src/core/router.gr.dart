// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../views/articles_view.dart' as _i2;
import '../views/home_view.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeView.name: (routeData) {
      return _i3.MaterialPageX<_i1.HomeView>(
          routeData: routeData, child: const _i1.HomeView());
    },
    ArticlesView.name: (routeData) {
      return _i3.MaterialPageX<_i2.ArticlesView>(
          routeData: routeData, child: const _i2.ArticlesView());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeView.name, path: '/'),
        _i3.RouteConfig(ArticlesView.name, path: '/articles-view')
      ];
}

/// generated route for [_i1.HomeView]
class HomeView extends _i3.PageRouteInfo<void> {
  const HomeView() : super(name, path: '/');

  static const String name = 'HomeView';
}

/// generated route for [_i2.ArticlesView]
class ArticlesView extends _i3.PageRouteInfo<void> {
  const ArticlesView() : super(name, path: '/articles-view');

  static const String name = 'ArticlesView';
}
