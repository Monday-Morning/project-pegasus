import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/models/article.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/state/article_state.dart';

class ArticleNotifier extends StateNotifier<ArticleState> {
  ArticleNotifier(this._graphQLApi) : super(const ArticleState()) {
    listArticles();
  }

  final GraphQLApi _graphQLApi;

  Future<void> listArticles() async {
    try {
      state = const ArticleState.loading();
      final List<Article> articles = await _graphQLApi.listArticles();
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
