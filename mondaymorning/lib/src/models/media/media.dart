// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mondaymorning/src/models/issues/authors.dart';

part 'media.freezed.dart';
part 'media.g.dart';

/// Media data model
@freezed
class Media with _$Media {
  @JsonSerializable(explicitToJson: true)
  /// Constructor for Media
  factory Media({
    required String store,
    required String storePath,
    required String mediaType,
    String? blurHash,
    List<Authors>? authors,
  }) = _Media;

  /// a factory function that converts a json object to a dart object.
  factory Media.fromJson(Map<String, dynamic> json) =>
      _$MediaFromJson(json);
}