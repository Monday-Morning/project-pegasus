import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mondaymorning/src/models/category/category.dart';

part 'category_article_state.freezed.dart';

/// State declaration for all states of Article
@freezed
class CategoryState with _$CategoryState {
  /// Initial state of Articles List.
  const factory CategoryState() = _Initial;

  /// Loading state of Article.
  const factory CategoryState.loading() = _Loading;

  /// Success state of Article List. Provides the list of articles to the UI.
  const factory CategoryState.success(Category categoryArticles) = _Success;

  /// Error state of Article.
  const factory CategoryState.error(String message) = _Error;
}
