import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/api/graphql/queries/squiggle_queries.dart';
import 'package:mondaymorning/src/api/models/squiggle/squiggle.dart';
import 'package:mondaymorning/src/api/repositories/squiggle/squiggle_repository.dart';
import 'package:mondaymorning/src/services/graphql/graphql_api.dart';

class GraphSquiggleRepository implements SquiggleRepository {
  final GraphQLAPI graphClient;

  GraphSquiggleRepository({required this.graphClient});

  @override
  Future<Squiggle> getLatestSquiggle() async {
    try {
      final response = await graphClient.query(
        query: QueryOptions(
          document: gql(SquiggleQueries.getLatestSquiggle),
        ),
      );

      final responseData = response.data!['getLatestSquiggle']!;

      final squiggle = Squiggle.fromJson(responseData as Map<String, dynamic>);

      return squiggle;
    } catch (e) {
      rethrow;
    }
  }
}
