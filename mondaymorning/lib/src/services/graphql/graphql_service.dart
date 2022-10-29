// ignore_for_file: avoid_dynamic_calls

import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

abstract class GraphQLApi {
    /// Initialises GraphQL client
    Future<void> initGraphQL();

    /// A future that returns a list of all the articles.
    Future<QueryResult> query({required QueryOptions query});
}

class GraphQLService extends GraphQLApi {
    factory GraphQLService() {
        return _graphQLService;
    }
    GraphQLService._internal();

    static final GraphQLService _graphQLService = GraphQLService._internal();

    late GraphQLClient _client;

    @override
    Future<void> initGraphQL() async {
        final _httpLink = HttpLink("https://mm.dashnet.in/api/v1/graph");

        _client = GraphQLClient(link: _httpLink, cache: GraphQLCache());
    }

    @override
    Future<QueryResult> query({required QueryOptions query}) async {
        try {
            final result = await _client.query(query);

            if (result.data != null) {
                return result;
            } else if (result.hasException) {
                throw Exception(result.exception);
            } else {
                throw Exception('Something went wrong');
            }
        } catch (e) {
            throw Exception(e);
        }
    }
}
