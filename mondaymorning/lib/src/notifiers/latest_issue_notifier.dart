import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/models/issues/latest_issue.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/services/graphql/queries/homepage/getLatestIssues.dart';
import 'package:mondaymorning/src/state/latest_issue_state.dart';

/// Notifier for List Articles API.
class LatestIssueNotifier extends StateNotifier<LatestIssueState> {
  final GraphQLApi _graphQLApi;

  /// Constructor for ListArticlesNotifier.
  LatestIssueNotifier(this._graphQLApi) : super(const LatestIssueState()) {
    listArticles();
  }

  /// Fetches the list of articles from API and updates state accordingly
  Future<void> listArticles() async {
    try {
      state = const LatestIssueState.loading();
      final result = await _graphQLApi.query(query: QueryOptions(
        document: gql(getLastestIssueQuery.getLastestIssue),
        variables: const {
          'limit' : 2,
          'onlyPublished' : true
        },
      ),);

      final issue = result.data!['getLatestIssues']![0];

      final latestIssue = LatestIssue.fromJson(issue as Map<String, dynamic>);

      if (latestIssue.articles.isNotEmpty && latestIssue.featured.isNotEmpty) {
        state = LatestIssueState.success(latestIssue);
      } else {
        state = const LatestIssueState();
      }
    } catch (e) {
      state = const LatestIssueState.error('Could not fetch Articles');
    }
  }
}
