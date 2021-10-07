import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/notifiers/list_articles_notifier.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/state/article_state.dart';

/// A provider used for injecting GraphQLService.
final graphqlProvider =
    Provider<GraphQLService>((ref) => GraphQLService()..initGraphQL());

/// StateNotifierProvider for ListArticlesNotifier.
final listArticlesProvider =
    StateNotifierProvider<ListArticlesNotifier, ArticleState>(
        (StateNotifierProviderRef<ListArticlesNotifier, ArticleState> ref) =>
            ListArticlesNotifier(ref.watch(graphqlProvider)));
