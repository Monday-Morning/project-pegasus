import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/providers/providers.dart';

/// Home View widget of the app.
class HomeView extends ConsumerWidget {
  /// Constructor for HomeView.
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkmodeEnabled = ref.watch(appThemeNotifierProvider);
    ref.watch(graphqlProvider);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ElevatedButton(
              //   onPressed: () => context.pushRoute(const ArticlesView()),
              //   child: const Text('Articles'),
              // ),
              Switch(
                  value: darkmodeEnabled,
                  onChanged: (enabled) {
                    if (enabled) {
                      ref
                          .watch(appThemeNotifierProvider.notifier)
                          .setDarkTheme();
                    } else {
                      ref
                          .watch(appThemeNotifierProvider.notifier)
                          .setLightTheme();
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
