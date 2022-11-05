import 'package:graphql_flutter/graphql_flutter.dart';

abstract class GraphQLAPI {
  Future<void> init();

  Future<QueryResult> query({required QueryOptions query});
}
