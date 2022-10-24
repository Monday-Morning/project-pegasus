import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mondaymorning/src/models/article/content.dart';
import 'package:mondaymorning/src/models/issues/authors.dart';
import 'package:mondaymorning/src/models/issues/categories.dart';
import 'package:mondaymorning/src/models/media/covermedia.dart';

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
    required String articleType,
    required List<Authors> authors,
    List<Authors>? photographers,
    List<Authors>? designers,
    List<Authors>? tech,
    required List<Categories> categories,
    required List<Content> content,
    required CoverMedia coverMedia,
    required int reactions,
    required int comments,
    required int bookmarks,
    required int views,
    required int hits,
    required int readTime,
    required int updatedAt,
  }) = _Article;

  /// a factory function that converts a json object to a dart object.
  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
