import 'package:mondaymorning/src/api/graphql/fragments/article_fragments.dart';

class IssueQueries {
  static const getLastestIssues = '''
    query getLatestIssues(\$limit: Int!, \$onlyPublished: Boolean!) {
      getLatestIssues(limit: \$limit, onlyPublished: \$onlyPublished) {
        id
        name
        featured {
          ${ArticleFragments.basicArticleData}
        }
        articles {
          ${ArticleFragments.basicArticleData}
        }
      }
    }
  ''';
}
