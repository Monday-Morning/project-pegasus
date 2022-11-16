import 'package:mondaymorning/src/api/graphql/fragments/article_fragments.dart';

class ArticleQueries {
  static const getArticleByID = '''
    query getArticleByID(\$id: ID!) {
      getArticleByID(id: \$id) {
        ${ArticleFragments.completeArticleData}
      }
    }
  ''';

  static const getArticlesByCategory = '''
    query getArticlesByCategories(
    \$categoryNumbers: [Int]!
    \$limit: Int
    \$offset: Int
  ) {
    getArticlesByCategories(
      categoryNumbers: \$categoryNumbers
      limit: \$limit
      offset: \$offset
    ) {
      ${ArticleFragments.basicArticleData}
    }
  }
  ''';
}
