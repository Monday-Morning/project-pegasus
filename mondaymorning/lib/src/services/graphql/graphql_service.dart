// ignore_for_file: avoid_dynamic_calls

import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLService {
    factory GraphQLService() {
        return _graphQLService;
    }
    GraphQLService._internal();

    static final GraphQLService _graphQLService = GraphQLService._internal();

    GraphQLClient client = GraphQLClient(
        link: HttpLink("https://project-reclamation-staging.herokuapp.com/v1/graph"),
        cache: GraphQLCache(),
    );

    Future<QueryResult> query({required QueryOptions query}) async {
        try {
            final result = await client.query(query);

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
