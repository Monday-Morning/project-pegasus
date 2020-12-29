import 'package:easy_localization/easy_localization.dart';
import 'package:mondaymorning/generated/locale_keys.g.dart';
import 'package:stacked/stacked.dart';

/// ViewModel for [HomeView]
class HomeViewmodel extends BaseViewModel {
  final String _title = LocaleKeys.title.tr();
  String get title => _title;

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }
}
