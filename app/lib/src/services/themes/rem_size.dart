import 'dart:ui';

import 'package:flutter/material.dart';

class REMSize extends ThemeExtension<REMSize> {
  final double baseSize;

  REMSize({required this.baseSize});

  @override
  ThemeExtension<REMSize> copyWith({double? baseSize}) {
    return REMSize(baseSize: baseSize ?? this.baseSize);
  }

  @override
  ThemeExtension<REMSize> lerp(ThemeExtension<REMSize>? other, double t) {
    if (other is! REMSize) {
      return this;
    }
    return REMSize(
      baseSize: lerpDouble(baseSize, other.baseSize, t)!,
    );
  }
}
