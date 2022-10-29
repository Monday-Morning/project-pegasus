import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/models/category/category.dart';
import 'package:mondaymorning/src/models/issues/article_issue.dart';
import 'package:mondaymorning/src/models/issues/latest_issue.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/services/graphql/queries/homepage/getLatestIssues.dart';
import 'package:mondaymorning/src/state/category_article_state.dart';
import 'package:mondaymorning/src/state/latest_issue_state.dart';

/// Notifier for List Articles API.
class CategoryArticlesNotifier extends StateNotifier<CategoryState> {
  final GraphQLApi _graphQLApi;
  final QueryOptions query;

  /// Constructor for ListArticlesNotifier.
  CategoryArticlesNotifier(this._graphQLApi, this.query) : super(const CategoryState()) {
    listArticles();
  }

  /// Fetches the list of articles from API and updates state accordingly
  Future<void> listArticles() async {
    try {
      state = const CategoryState.loading();
      final result = await _graphQLApi.query(query: query,);

      final List<List<dynamic>> data = (result.data!['getArticlesByCategories'] as List<dynamic>).cast<List<dynamic>>();

      final finalData = data.map((e) => e.map((e) => ArticleIssue.fromJson(e as Map<String, dynamic>)).toList()).toList();


      if (finalData.isNotEmpty) {
        state = CategoryState.success(finalData);
      } else {
        state = const CategoryState();
      }
    } catch (e) {
      state = const CategoryState.error('Could not fetch Articles');
    }
  }
}
