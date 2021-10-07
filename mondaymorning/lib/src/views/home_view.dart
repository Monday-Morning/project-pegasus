import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/providers/providers.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(graphqlProvider);
    ref.watch(listArticlesProvider);
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('Monday Morning'),
        ),
      ),
    );
  }
}
