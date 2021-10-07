import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

/// Article data model
@freezed
class Article with _$Article {
  /// Constructor for Article
  const factory Article({
    required String id,
    required String title,
    required String inshort,
  }) = _Article;

  /// a factory function that converts a json object to a dart object.
  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
