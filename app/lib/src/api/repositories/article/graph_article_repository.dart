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
  Future<List<List<Article>>> getArticlesByCategory(
      {required List<int> categoryId, required int limit}) async {
    try {
      final result = await graphClient.query(
        query: QueryOptions(
          document: gql(ArticleQueries.getArticlesByCategory),
          variables: {
            'limit' : limit,
            'categoryNumbers' : categoryId,
          },
        ),
      );

      final List<List<dynamic>> data = (result.data!['getArticlesByCategories'] as List<dynamic>).cast<List<dynamic>>();

      final finalData = data.map((e) => e.map((e) => Article.fromJson(e as Map<String, dynamic>)).toList()).toList();

      return finalData;
    } catch (e) {
      rethrow;
    }
  }
}
