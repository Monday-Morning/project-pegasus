import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/state/list_articles_state.dart';

/// Notifier for List Articles API.
class ListArticlesNotifier extends StateNotifier<ListArticlesState> {
  final GraphQLApi _graphQLApi;

  /// Constructor for ListArticlesNotifier.
  ListArticlesNotifier(this._graphQLApi) : super(const ListArticlesState()) {
    listArticles();
  }


  /// Fetches the list of articles from API and updates state accordingly
  Future<void> listArticles() async {
    try {
      // state = const ListArticlesState.loading();
      // final articles = await _graphQLApi.listArticles();
      // if (articles.isNotEmpty) {
      //   state = ListArticlesState.success(articles);
      // } else {
      //   state = const ListArticlesState();
      // }
    } catch (e) {
      state = const ListArticlesState.error('Could not fetch Articles');
    }
  }
}
