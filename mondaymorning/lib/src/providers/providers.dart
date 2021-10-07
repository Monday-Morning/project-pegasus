import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/notifiers/article_notifier.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/state/article_state.dart';

final Provider<GrapQLService> graphqlProvider = Provider<GrapQLService>(
    (ProviderRefBase ref) => GrapQLService()..initGraphQL());

final listArticlesProvider =
    StateNotifierProvider<ArticleNotifier, ArticleState>(
        (ref) => ArticleNotifier(ref.watch(graphqlProvider)));
