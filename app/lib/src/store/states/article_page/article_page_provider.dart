import 'package:mondaymorning/src/api/repositories/article/graph_article_repository_provider.dart';
import 'package:mondaymorning/src/store/states/article_page/article_page_data_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_page_provider.g.dart';

@riverpod
Future<ArticlePageData> articlePageData(ArticlePageDataRef ref,
    {required String articleId}) async {
  return ArticlePageData(
    article: await ref
        .read(graphArticleRepositoryProvider)
        .getArticle(articleId: articleId),
    // comments: await ref.read(commentsProvider(articleId)).getComments(),
  );
}
