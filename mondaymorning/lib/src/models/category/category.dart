// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mondaymorning/src/models/issues/article_issue.dart';

part 'category.freezed.dart';
part 'category.g.dart';

/// Category data model
@freezed
class Category with _$Category {
  @JsonSerializable(explicitToJson: true)
  /// Constructor for Category
  factory Category({
    required List<List<ArticleIssue>> articles,
  }) = _Category;

  /// a factory function that converts a json object to a dart object.
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}