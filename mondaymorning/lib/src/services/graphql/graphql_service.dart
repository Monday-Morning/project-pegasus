// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/constants/strings.dart';
import 'package:mondaymorning/src/models/article.dart';
import 'package:mondaymorning/src/services/graphql/queries.dart';

/// An abstract class which contains all the required APIs for the app.
abstract class GraphQLApi {
  /// Initialises GraphQL client
  Future<void> initGraphQL();

  /// A future that returns a list of all the articles.
  Future<List<Article>> listArticles();
}

/// A service used for all the API operations.
class GraphQLService extends GraphQLApi {
  /// Constructor for GraphQLService.
  GraphQLService();
  late GraphQLClient _client;

  @override
  Future<void> initGraphQL() async {
    final _httpLink = HttpLink(Strings.graphQLURL);

    // final AuthLink _authLink = AuthLink(getToken: () async => 'Bearer ');

    // final Link _link = _authLink.concat(_httpLink);
    _client = GraphQLClient(link: _httpLink, cache: GraphQLCache());

    debugPrint('GraphQL initialised');
  }

  @override
  Future<List<Article>> listArticles() async {
    final options = QueryOptions(
        document: gql(Queries.listArticles),
        variables: <String, bool>{'onlyPublished': true});

    try {
      final result = await _client.query(options);

      if (result.hasException) {
        debugPrint(result.exception.toString());
      }

      /// Takes in data from [QueryResult] and converts it to a map
      List<Map<String, dynamic>> toMap(Map<String, dynamic> data) {
        /// Stores the list of instruction strings.

        final list = <Map<String, dynamic>>[];
        for (final article in data['listArticles']) {
          final listItem = <String, dynamic>{
            'id': article['id'],
            'title': article['title'],
            'inshort': article['inshort'],
          };
          list.add(listItem);
        }
        return list;
      }

      final listArticles = toMap(result.data!);

      final articles = <Article>[];

      for (final article in listArticles) {
        final singleArticle = Article.fromJson(article);
        articles.add(singleArticle);
      }
      return articles;
    } catch (e) {
      rethrow;
    }
  }
}
