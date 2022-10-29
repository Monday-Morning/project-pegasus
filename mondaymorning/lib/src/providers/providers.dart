import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/notifiers/categories_article_notifier.dart';
import 'package:mondaymorning/src/notifiers/latest_issue_notifier.dart';
import 'package:mondaymorning/src/notifiers/theme_notifier.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/state/category_article_state.dart';
import 'package:mondaymorning/src/state/latest_issue_state.dart';

/// A provider used for injecting [GraphQLService].
final graphqlProvider =
    Provider<GraphQLService>((ref) => GraphQLService()..initGraphQL());

/// StateNotifierProvider for [LatestIssueNotifier].
final latestIssueNotifierProvider = StateNotifierProvider<LatestIssueNotifier, LatestIssueState>(
    (StateNotifierProviderRef<LatestIssueNotifier, LatestIssueState> ref) =>
        LatestIssueNotifier(ref.watch(graphqlProvider)),);

/// StateNotifierProvider for [CategoryArticlesNotifier].
final categoryNotifierProvider = StateNotifierProvider.family<CategoryArticlesNotifier, CategoryState, QueryOptions>(
        (StateNotifierProviderRef<CategoryArticlesNotifier, CategoryState> ref, query) =>
            CategoryArticlesNotifier(ref.watch(graphqlProvider), query),);

/// StateNotifierProvider for [AppThemeNotifier]
final appThemeNotifierProvider =
    StateNotifierProvider<AppThemeNotifier, bool>((ref) => AppThemeNotifier());
