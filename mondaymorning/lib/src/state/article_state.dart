import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mondaymorning/src/models/article.dart';

part 'article_state.freezed.dart';

@freezed
class ArticleState with _$ArticleState {
  /// Initial state of Article.
  const factory ArticleState() = _Initial;

  /// Loading state of Article.
  const factory ArticleState.loading() = _Loading;

  /// Success state of Article.
  const factory ArticleState.success(List<Article> articles) = _Success;

  /// Error state of Article.
  const factory ArticleState.error(String message) = _Error;
}
