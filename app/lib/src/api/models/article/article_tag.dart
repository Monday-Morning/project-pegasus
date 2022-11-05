import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_tag.freezed.dart';
part 'article_tag.g.dart';

@freezed
class ArticleTag with _$ArticleTag {
  const factory ArticleTag({
    required String name,
    bool? isAdmin,
    String? reference,
    // Tag? tag,
  }) = _ArticleTag;

  factory ArticleTag.fromJson(Map<String, dynamic> json) =>
      _$ArticleTagFromJson(json);
}
