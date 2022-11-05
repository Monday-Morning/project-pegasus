import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mondaymorning/src/api/models/article/article_category.dart';
import 'package:mondaymorning/src/api/models/article/article_tag.dart';
import 'package:mondaymorning/src/api/models/article/cover_media.dart';
import 'package:mondaymorning/src/api/models/user/user_detail.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required String id,
    required String articleType,
    required String title,
    // required List<Content> content,
    required String inshort,
    int? oldArticleId,
    required List<UserDetail> authors,
    List<UserDetail>? designer,
    List<UserDetail>? photographers,
    List<UserDetail>? tech,
    List<int>? categoryNumbers,
    List<ArticleCategory>? category,
    List<String>? tagNames,
    List<ArticleTag>? tags,
    List<ArticleTag>? adminTags,
    required CoverMedia coverMedia,
    bool? approvalStatus,
    String? publishStatus,
    bool? isInstituteRestricted,
    int? reactions,
    int? comments,
    int? bookmarks,
    int? views,
    int? hits,
    required int readTime,
    int? timeSpent,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
