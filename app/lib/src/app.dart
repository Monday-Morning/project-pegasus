import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mondaymorning/src/pages/full_error_page.dart';
import 'package:mondaymorning/src/pages/splash_page.dart';
import 'package:mondaymorning/src/services/router/mm_router.dart';
import 'package:mondaymorning/src/services/themes/index.dart';
import 'package:mondaymorning/src/store/states/app_config/app_config_provider.dart';

class ProjectPegasus extends ConsumerWidget {
  ProjectPegasus({super.key});

  final mmRouter = MMRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    final appConfigProvider = ref.watch(appConfigProviderProvider);

    return appConfigProvider.when(
      loading: () {
        return SplashPage();
      },
      error: (error, stackTrace) {
        if (kDebugMode) {
          print(error);
        }
        return FullErrorPage();
      },
      data: (data) {
        return MaterialApp.router(
          title: 'MondayMorning',
          themeMode: data.themeMode,
          // themeMode: ThemeMode.dark,
          theme: MMTheme.materialLight,
          darkTheme: MMTheme.materialDark,
          debugShowCheckedModeBanner: false,
          routeInformationParser: mmRouter.defaultRouteParser(),
          routerDelegate: mmRouter.delegate(
              // initialDeepLink: snapshot.data!.initialUrl,
              ),
        );
      },
    );
  }
}
