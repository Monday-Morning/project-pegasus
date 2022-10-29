import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mondaymorning/src/models/article/article.dart';

part 'article_state.freezed.dart';

/// State declaration for all states of Article
@freezed
class ArticleState with _$ArticleState {
  /// Initial state of Articles List.
  const factory ArticleState() = _Initial;

  /// Loading state of Article.
  const factory ArticleState.loading() = _Loading;

  /// Success state of Article List. Provides the list of articles to the UI.
  const factory ArticleState.success(Article article) = _Success;

  /// Error state of Article.
  const factory ArticleState.error(String message) = _Error;
}
