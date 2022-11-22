import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/services/graphql/graphql_api.dart';

class GraphQLService implements GraphQLAPI {
  factory GraphQLService() => _graphQLService;

  GraphQLService._internal();

  static final GraphQLService _graphQLService = GraphQLService._internal();

  late GraphQLClient _client;

  @override
  Future<void> init() async {
    final HttpLink httpLink = HttpLink(
      kDebugMode
          ? 'https://mondaymorning.nitrkl.ac.in/api/v1/graph'
          : 'http://localhost:5000',
    );

    // TODO: implement provider for firebase auth state
    final AuthLink authLink = AuthLink(
      getToken: () async => '',
    );

    final Link link = authLink.concat(httpLink);

    _client = GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    );
  }

  @override
  Future<QueryResult> query({required QueryOptions query}) async {
    // return await _client.query(query);
    try {
      final QueryResult<Object?> result = await _client.query(query);

      if (result.hasException) {
        throw Exception(result.exception);
      } else if (result.data == null) {
        throw Exception('No data');
      } else {
        return result;
      }
    } catch (e) {
      rethrow;
    }
  }
}
