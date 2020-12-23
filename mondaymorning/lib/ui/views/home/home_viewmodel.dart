import 'package:stacked/stacked.dart';

/// ViewModel for [HomeView]
class HomeViewmodel extends BaseViewModel {
  final String _title = "Welcome to Monday Morning App";
  String get title => _title;

  int _counter = 0;
  int get counter => _counter;

  void updateCounter() {
    _counter++;
    notifyListeners();
  }
}
