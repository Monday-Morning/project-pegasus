import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/core/router.gr.dart';
import 'package:mondaymorning/src/providers/providers.dart';

/// Home View widget of the app.
class HomeView extends ConsumerWidget {
  /// Constructor for HomeView.
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(graphqlProvider);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () => context.pushRoute(const ArticlesView()),
            child: const Text('Articles'),
          ),
        ),
      ),
    );
  }
}
