import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/state/article_state.dart';

/// Notifier for List Articles API.
class ListArticlesNotifier extends StateNotifier<ArticleState> {
  /// Constructor for ListArticlesNotifier.
  ListArticlesNotifier(this._graphQLApi) : super(const ArticleState()) {
    listArticles();
  }

  final GraphQLApi _graphQLApi;

  /// A future that handles the state of listArticles.
  Future<void> listArticles() async {
    try {
      state = const ArticleState.loading();
      final articles = await _graphQLApi.listArticles();
      if (articles.isNotEmpty) {
        state = ArticleState.success(articles);
      } else {
        state = const ArticleState();
      }
    } catch (e) {
      state = const ArticleState.error('Could not fetch Articles');
    }
  }
}
