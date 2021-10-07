import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/constants/strings.dart';
import 'package:mondaymorning/src/models/article.dart';
import 'package:mondaymorning/src/services/graphql/queries.dart';

/// An abstract class which contains all the required APIs for the app.
abstract class GraphQLApi {
  /// The function used to initialise GraphQL.
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
    );

    final result = await _client.query(options);

    if (result.hasException) {
      debugPrint(result.exception.toString());
    }

    print(result.data);

    return <Article>[
      const Article(id: '1', title: 'title', inshort: 'inshort')
    ];
  }
}
