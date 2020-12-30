import 'package:mondaymorning/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';

/// ViewModel for [HomeView]
class HomeViewmodel extends BaseViewModel {
  final _themeService = locator<ThemeService>();
  final String _title = "Welcome to Monday Morning App";
  String get title => _title;

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }

  /// Toggles the dark and light theme.
  void toggleTheme() => _themeService.toggleDarkLightTheme();
}
