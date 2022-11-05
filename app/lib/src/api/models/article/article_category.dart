import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_category.freezed.dart';
part 'article_category.g.dart';

@freezed
class ArticleCategory with _$ArticleCategory {
  const factory ArticleCategory({
    required int number,
    bool? isSubcategory,
    String? reference,
    // CategoryMap? category,
  }) = _ArticleCategory;

  factory ArticleCategory.fromJson(Map<String, dynamic> json) =>
      _$ArticleCategoryFromJson(json);
}
