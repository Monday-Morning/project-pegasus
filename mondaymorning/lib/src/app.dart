import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/providers/providers.dart';
import 'package:mondaymorning/src/services/navigation/router.gr.dart';
import 'package:mondaymorning/src/themes/base_theme.dart';
import 'package:mondaymorning/src/utils/strings.dart';

final _httpLink = HttpLink(Strings.graphQLURL);

/// GraphQL client
ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
        cache: GraphQLCache(),
        link: _httpLink
    )
);

/// Main app widget.
class MMApp extends ConsumerWidget {
  /// Constructor for [MMApp]
  MMApp({Key? key}) : super(key: key);

  /// Instance of [AppRouter]
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkmodeEnabled = ref.watch<bool>(appThemeNotifierProvider);
    return GraphQLProvider(
      client: client,
      child: MaterialApp.router(
        title: 'MondayMorning',
        themeMode: darkmodeEnabled ? ThemeMode.dark : ThemeMode.light,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        routeInformationParser: appRouter.defaultRouteParser(),
        routerDelegate: appRouter.delegate(),
      ),
    );
  }
}
