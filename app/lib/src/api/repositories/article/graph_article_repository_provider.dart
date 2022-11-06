import 'package:mondaymorning/src/api/repositories/article/graph_article_repository.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graph_article_repository_provider.g.dart';

@riverpod
GraphArticleRepository graphArticleRepository(GraphArticleRepositoryRef ref) {
  return GraphArticleRepository(graphClient: GraphQLService());
}
