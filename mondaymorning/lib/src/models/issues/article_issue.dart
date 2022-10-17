// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mondaymorning/src/models/media/covermedia.dart';

import 'authors.dart';
import 'categories.dart';

part 'article_issue.freezed.dart';
part 'article_issue.g.dart';

/// Article data model
@freezed
class ArticleIssue with _$ArticleIssue {
  @JsonSerializable(explicitToJson: true)
  /// Constructor for ArticleIssue
  factory ArticleIssue({
    required String id,
    required String title,
    required String articleType,
    required int readTime,
    required String inshort,
    required List<Authors> authors,
    required List<Categories> categories,
    required CoverMedia coverMedia,
  }) = _ArticleIssue;

  /// a factory function that converts a json object to a dart object.
  factory ArticleIssue.fromJson(Map<String, dynamic> json) =>
      _$ArticleIssueFromJson(json);
}
