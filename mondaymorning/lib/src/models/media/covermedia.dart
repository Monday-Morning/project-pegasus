// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mondaymorning/src/models/media/media.dart';

part 'covermedia.freezed.dart';
part 'covermedia.g.dart';

/// Cover Media data model
@freezed
class CoverMedia with _$CoverMedia {
  @JsonSerializable(explicitToJson: true)
  /// Constructor for Cover Media
  factory CoverMedia({
    required Media square,
    required Media rectangle,
  }) = _CoverMedia;

  /// a factory function that converts a json object to a dart object.
  factory CoverMedia.fromJson(Map<String, dynamic> json) =>
      _$CoverMediaFromJson(json);
}