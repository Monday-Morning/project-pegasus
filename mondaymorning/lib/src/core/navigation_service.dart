import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provides an instance of navigation service.
final Provider<NavigationService> navigatorProvider =
    Provider<NavigationService>((ProviderRefBase ref) => NavigationService());

/// Service for navigation without context.
class NavigationService {
  /// Global key used for calling nav functions on current state of navigator.
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// Navigates to the provided route.
  Future<void>? navigateTo(String routeName) {
    return navigatorKey.currentState?.pushNamed(routeName);
  }

  /// Pops the current route.
  void goBack() {
    return navigatorKey.currentState?.pop();
  }
}
