import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

/// Registers all the third party services with [GetIt] using injectable.
@module
abstract class ThirdPartyServicesModule {
  /// Registers navigationService from stacked_services
  /// ```dart
  /// // Navigation example
  /// final NavigationService _navigationService = locator<NavigationService>();
  /// ...
  /// _navigationService.navigateTo(Routes.HomeView);
  /// ...
  /// ```
  @lazySingleton
  NavigationService get navigationService;

  /// Registers dialognService from stacked_services
  /// ```dart
  /// // Dialog Example
  /// final DialogService _dialogService = locator<DialogService>();
  /// ...
  /// await _dialogService.showDialog(
  /// title: 'Test Dialog Title',
  /// description: 'Test Dialog Description',
  /// dialogPlatform: DialogPlatform.Cupertino,
  /// );
  /// ...
  /// ```
  @lazySingleton
  DialogService get dialogService;

  /// Registers snackbarService from stacked_services
  /// ```dart
  /// // SnackBar Example
  /// final SnackbarService _snackbarService = locator<SnackbarService>();
  /// ...
  /// _snackbarService.showSnackbar(
  /// message: 'This is a snack bar',
  /// title: 'The title',
  /// duration: Duration(seconds: 2),
  /// onTap: (_) {
  ///   print('snackbar tapped');
  /// },
  /// mainButtonTitle: 'Undo',
  /// onMainButtonTapped: () => print('Undo the action!'),
  /// );
  /// ...
  /// ```
  @lazySingleton
  SnackbarService get snackbarService;
}
