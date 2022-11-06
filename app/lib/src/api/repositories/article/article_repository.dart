import 'package:mondaymorning/src/api/models/article/article.dart';

abstract class ArticleRepository {
  Future<Article> getArticle({required String articleId});
  Future<List<Article>> getArticlesByCategory(
      {required String categoryId, required int limit});
}
