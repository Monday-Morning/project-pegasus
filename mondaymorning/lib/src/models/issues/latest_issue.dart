// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mondaymorning/src/models/issues/article_issue.dart';

part 'latest_issue.freezed.dart';
part 'latest_issue.g.dart';

/// Article data model
@freezed
class LatestIssue with _$LatestIssue {
  @JsonSerializable(explicitToJson: true)
  /// Constructor for LatestIssue
  factory LatestIssue({
    required String id,
    required List<ArticleIssue> featured,
    required List<ArticleIssue> articles,
  }) = _LatestIssue;

  /// a factory function that converts a json object to a dart object.
  factory LatestIssue.fromJson(Map<String, dynamic> json) =>
      _$LatestIssueFromJson(json);
}