import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mondaymorning/src/models/article.dart';

part 'list_articles_state.freezed.dart';

/// State declaration for all states of Article
@freezed
class ListArticlesState with _$ListArticlesState {
  /// Initial state of Articles List.
  const factory ListArticlesState() = _Initial;

  /// Loading state of Article.
  const factory ListArticlesState.loading() = _Loading;

  /// Success state of Article List. Provides the list of articles to the UI.
  const factory ListArticlesState.success(List<Article> articles) = _Success;

  /// Error state of Article.
  const factory ListArticlesState.error(String message) = _Error;
}
