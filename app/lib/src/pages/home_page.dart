import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mondaymorning/src/pages/full_error_page.dart';
import 'package:mondaymorning/src/pages/full_loading_page.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/states/home_page/home_page_data_type.dart';
import 'package:mondaymorning/src/store/states/home_page/home_page_provider.dart';
import 'package:mondaymorning/src/ui/screens/home_screen.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return FutureBuilder<HomePageData>(
      future: ref.watch(homePageDataProvider.future),
      initialData: null,
      builder: (BuildContext context, AsyncSnapshot<HomePageData> snapshot) {
        if (snapshot.hasError) {
          if (kDebugMode) {
            print(snapshot.error);
          }
          return FullErrorPage();
        }
        if (snapshot.hasData) {
          if (kDebugMode) {
            print(snapshot.data?.latestIssue);
          }
          return HomeScreen(data: snapshot.data!);
        }
        return FullLoadingPage();
      },
    );
  }
}
