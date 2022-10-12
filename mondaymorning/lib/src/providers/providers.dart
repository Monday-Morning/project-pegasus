import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/notifiers/list_articles_notifier.dart';
import 'package:mondaymorning/src/notifiers/theme_notifier.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
// import 'package:mondaymorning/src/state/list_articles_state.dart';

/// A provider used for injecting [GraphQLService].
// final graphqlProvider =
//     Provider<GraphQLService>((ref) => GraphQLService()..initGraphQL());
//
// /// StateNotifierProvider for [ListArticlesNotifier].
// final listArticlesNotifierProvider = StateNotifierProvider<ListArticlesNotifier,
//         ListArticlesState>(
//     (StateNotifierProviderRef<ListArticlesNotifier, ListArticlesState> ref) =>
//         ListArticlesNotifier(ref.watch(graphqlProvider)));

/// StateNotifierProvider for [AppThemeNotifier]
final appThemeNotifierProvider =
    StateNotifierProvider<AppThemeNotifier, bool>((ref) => AppThemeNotifier());
