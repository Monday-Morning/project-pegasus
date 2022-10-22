// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mondaymorning/src/models/media/media.dart';

part 'content.freezed.dart';
part 'content.g.dart';

/// BlockFormatting data model
@freezed
class BlockFormatting with _$BlockFormatting {
  @JsonSerializable(explicitToJson: true)
  /// Constructor for BlockFormatting
  factory BlockFormatting({
    required String align,
    required bool hasHeaderRow,
    required bool hasHeaderColumn,
    required String listStyle,
  }) = _BlockFormatting;

  /// a factory function that converts a json object to a dart object.
  factory BlockFormatting.fromJson(Map<String, dynamic> json) =>
      _$BlockFormattingFromJson(json);
}

/// Content data model
@freezed
class Content with _$Content {
  @JsonSerializable(explicitToJson: true)
  /// Constructor for Content
  factory Content({
    required String text,
    required String mediaID,
    required String data,
    required String contentType,
    required BlockFormatting blockFormatting,
    Media? media,
  }) = _Content;

  /// a factory function that converts a json object to a dart object.
  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}