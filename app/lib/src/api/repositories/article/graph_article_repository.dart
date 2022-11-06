import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/api/graphql/queries/article_queries.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/api/repositories/article/article_repository.dart';
import 'package:mondaymorning/src/services/graphql/graphql_api.dart';

class GraphArticleRepository implements ArticleRepository {
  final GraphQLAPI graphClient;

  GraphArticleRepository({required this.graphClient});

  @override
  Future<Article> getArticle({required String articleId}) async {
    try {
      final response = await graphClient.query(
        query: QueryOptions(
          document: gql(ArticleQueries.getArticleByID),
          variables: {
            'id': articleId,
          },
        ),
      );

      final responseData = response.data!['getArticleByID']!;

      final article = Article.fromJson(responseData as Map<String, dynamic>);

      return article;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Article>> getArticlesByCategory(
      {required String categoryId, required int limit}) {
    // TODO: implement getArticlesByCategory
    throw UnimplementedError();
  }
}
