import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mondaymorning/src/pages/full_error_page.dart';
import 'package:mondaymorning/src/pages/full_loading_page.dart';
import 'package:mondaymorning/src/pages/splash_page.dart';
import 'package:mondaymorning/src/services/router/mm_router.dart';
import 'package:mondaymorning/src/services/themes/index.dart';
// import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/states/app_config/app_config_provider.dart';
import 'package:mondaymorning/src/store/states/app_config/app_config_type.dart';

class ProjectPegasus extends ConsumerWidget {
  ProjectPegasus({super.key});

  final mmRouter = MMRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      //future: Future.wait([ref.watch(appConfigProvider.future), Future.delayed(Duration(milliseconds: 4600))]),
      future: ref.watch(appConfigProvider.future),
      builder: (context, snapshot ) {   //AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasError) {
          if (kDebugMode) {
            print(snapshot.error);
          }
          return FullErrorPage();
        }
        if ( snapshot.hasData ) {   //&& snapshot.connectionState == ConnectionState.done) {
          return MaterialApp.router(
            title: 'MondayMorning',
            themeMode: snapshot.data!.themeMode,
            // themeMode: ThemeMode.dark,
            theme: MMTheme.materialLight,
            darkTheme: MMTheme.materialDark,
            debugShowCheckedModeBanner: false,
            routeInformationParser: mmRouter.defaultRouteParser(),
            routerDelegate: mmRouter.delegate(),
          );
        }
        return SplashPage();
      },
    );
  }
}
