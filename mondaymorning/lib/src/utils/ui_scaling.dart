import 'package:flutter/material.dart';

/// Handles the Size Configuration of the app for UI Scaling.
class SizeConfig {
  late MediaQueryData _mediaQueryData;

  /// Stores the Screen Width of the Device.
  static double? screenWidth;

  /// Stores the Screen Height of the Device.
  static double? screenHeight;

  late double _safeAreaHorizontal;
  late double _safeAreaVertical;

  /// Stores the horizontal length of a safe block.
  static double? safeBlockHorizontal;

  /// Stores the verticle length of a safe block.
  static double? safeBlockVertical;

  /// Initialises Size Config.
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth! - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight! - _safeAreaVertical) / 100;
  }
}
