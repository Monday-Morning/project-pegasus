import 'package:mondaymorning/src/api/repositories/squiggle/graph_squiggle_repository.dart';
import 'package:mondaymorning/src/api/repositories/squiggle/squiggle_repository.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'squiggle_repository_provider.g.dart';

@riverpod
SquiggleRepository squiggleRepository(SquiggleRepositoryRef ref) {
  return GraphSquiggleRepository(graphClient: GraphQLService());
}
