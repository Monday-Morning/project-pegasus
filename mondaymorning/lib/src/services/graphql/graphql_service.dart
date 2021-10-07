import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/constants/strings.dart';
import 'package:mondaymorning/src/models/article.dart';
// import 'package:mondaymorning/src/models/article.dart';
import 'package:mondaymorning/src/services/graphql/queries.dart';

abstract class GraphQLApi {
  Future<void> initGraphQL();
  Future<List<Article>> listArticles();
}

class GrapQLService extends GraphQLApi {
  GrapQLService();
  late GraphQLClient _client;

  @override
  Future<void> initGraphQL() async {
    final HttpLink _httpLink = HttpLink(Strings.GRAPHQL_URL);

    // final AuthLink _authLink = AuthLink(getToken: () async => 'Bearer ');

    // final Link _link = _authLink.concat(_httpLink);
    _client = GraphQLClient(link: _httpLink, cache: GraphQLCache());

    debugPrint('GraphQL initialised');
  }

  @override
  Future<List<Article>> listArticles() async {
    final QueryOptions options = QueryOptions(
      document: gql(Queries.LIST_ARTICLES),
    );

    final QueryResult result = await _client.query(options);

    if (result.hasException) {
      debugPrint(result.exception.toString());
    }

    print(result.data);

    return <Article>[
      const Article(id: '1', title: 'title', inshort: 'inshort')
    ];
  }
}
