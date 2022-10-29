import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/models/category/category.dart';
import 'package:mondaymorning/src/models/issues/article_issue.dart';
import 'package:mondaymorning/src/models/issues/latest_issue.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/services/graphql/queries/homepage/getLatestIssues.dart';
import 'package:mondaymorning/src/state/article_state.dart';
import 'package:mondaymorning/src/state/category_article_state.dart';
import 'package:mondaymorning/src/state/latest_issue_state.dart';

/// Notifier for List Articles API.
class ArticleNotifier extends StateNotifier<ArticleState> {
  final GraphQLApi _graphQLApi;
  final QueryOptions query;

  /// Constructor for ListArticlesNotifier.
  ArticleNotifier(this._graphQLApi, this.query) : super(const ArticleState()) {
    listArticles();
  }

  /// Fetches the list of articles from API and updates state accordingly
  Future<void> listArticles() async {
    try {
      state = const ArticleState.loading();
      final result = await _graphQLApi.query(query: query,);


    } catch (e) {
      state = const ArticleState.error('Could not fetch Articles');
    }
  }
}