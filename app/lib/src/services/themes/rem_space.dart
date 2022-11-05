import 'dart:ui';

import 'package:flutter/material.dart';

class REMSpace extends ThemeExtension<REMSpace> {
  late final double _baseSpacing;

  REMSpace({required double baseSpacing}) {
    _baseSpacing = baseSpacing;
  }

  @override
  ThemeExtension<REMSpace> copyWith({double? baseSize}) {
    return REMSpace(baseSpacing: baseSize ?? _baseSpacing);
  }

  @override
  ThemeExtension<REMSpace> lerp(ThemeExtension<REMSpace>? other, double t) {
    if (other is! REMSpace) {
      return this;
    }
    return REMSpace(
      baseSpacing: lerpDouble(_baseSpacing, other.get(0), t)!,
    );
  }

  double get(int scale) =>
      _baseSpacing *
      (scale < 1
          ? 1
          : scale > 6
              ? 6
              : scale);
}
