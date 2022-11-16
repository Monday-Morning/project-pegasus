import 'package:mondaymorning/src/api/models/article/article.dart';

abstract class ArticleRepository {
  Future<Article> getArticle({required String articleId});
  Future<List<List<Article>>> getArticlesByCategory(
      {required List<int> categoryId, required int limit});
}
