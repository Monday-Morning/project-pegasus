import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/providers/providers.dart';
import 'package:mondaymorning/src/services/navigation/router.gr.dart';
import 'package:mondaymorning/src/utils/ui_scaling.dart';

/// Home View widget of the app.
class HomeView extends ConsumerWidget {
  /// Constructor for HomeView.
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkmodeEnabled = ref.watch(appThemeNotifierProvider.notifier);
    SizeConfig().init(context);
    ref.watch(graphqlProvider);
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.pushRoute(const ArticlesView()),
              child: const Text('Articles'),
            ),
            Switch(
                value: darkmodeEnabled.state,
                onChanged: (enabled) {
                  if (enabled) {
                    // print(enabled.toString());
                    darkmodeEnabled.setDarkTheme();
                  } else {
                    darkmodeEnabled.setLightTheme();
                  }
                })
          ],
        ),
      ),
    );
  }
}
