import 'package:mondaymorning/src/api/repositories/issue/graph_issue_repository.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graph_issue_repository_provider.g.dart';

@riverpod
GraphIssueRepository graphIssueRepository(GraphIssueRepositoryRef ref) {
  return GraphIssueRepository(graphClient: GraphQLService());
}
