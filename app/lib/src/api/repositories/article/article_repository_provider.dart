import 'package:mondaymorning/src/api/repositories/article/article_repository.dart';
import 'package:mondaymorning/src/api/repositories/article/graph_article_repository.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_repository_provider.g.dart';

@riverpod
ArticleRepository articleRepository(ArticleRepositoryRef ref) {
  return GraphArticleRepository(graphClient: GraphQLService());
}
