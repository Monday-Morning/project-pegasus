import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/api/graphql/queries/issue_queries.dart';
import 'package:mondaymorning/src/api/models/issue/issue.dart';
import 'package:mondaymorning/src/api/repositories/issue/issue_repository.dart';
import 'package:mondaymorning/src/services/graphql/graphql_api.dart';

class GraphIssueRepository implements IssueRepository {
  final GraphQLAPI graphClient;

  GraphIssueRepository({required this.graphClient});

  @override
  Future<List<Issue>> getIssues(
      {required int limit, required bool onlyPublished}) async {
    try {
      final response = await graphClient.query(
          query: QueryOptions(
        document: gql(IssueQueries.getLastestIssues),
        variables: {
          'limit': limit,
          'onlyPublished': onlyPublished,
        },
      ));

      final responseData = (response.data!['getLatestIssues'] as List<dynamic>)
          .cast<Map<String, dynamic>>();

      final issue = responseData.map((e) => Issue.fromJson(e)).toList();

      return issue;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Issue> getLatestIssue() async {
    try {
      final response = await graphClient.query(
          query: QueryOptions(
        document: gql(IssueQueries.getLastestIssues),
        variables: {
          'limit': 1,
          'onlyPublished': false,
        },
      ));

      final responseData = response.data!['getLatestIssues']![0]!;

      final issue = Issue.fromJson(responseData as Map<String, dynamic>);

      return issue;
    } catch (e) {
      rethrow;
    }
  }
}
