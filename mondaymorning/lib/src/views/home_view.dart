import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/providers/providers.dart';
import 'package:mondaymorning/src/widgets/more_button.dart';

import '../services/navigation/router.gr.dart';

/// Home View widget of the app.
class HomeView extends ConsumerWidget {
  /// Constructor for HomeView.
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkmodeEnabled = ref.watch(appThemeNotifierProvider);
    // ref.watch(graphqlProvider);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Scaffold(
          appBar: AppBar(
            title: Text('More'),
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ElevatedButton(
              //   onPressed: () => context.pushRoute(const ArticlesView()),
              //   child: const Text('Articles'),
              // ),
              Card(
                elevation: 7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          Icon(Icons.dark_mode_outlined, size: 27),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.5,
                            height: 24,
                            child: AutoSizeText(
                                ' Dark Mode',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
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
                          }
                          ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  MoreButton(feature: 'Bookmarks', icon: Icons.bookmark_border_outlined, onTileTap: (){context.router.push(ComingSoonRoute(),);},),
                  SizedBox(
                    height: 5,
                  ),
                  MoreButton(feature: 'Password Change', icon: Icons.password_outlined, onTileTap: (){context.router.push(ComingSoonRoute(),);},),
                  SizedBox(
                    height: 5,
                  ),
                  MoreButton(feature: 'Verify Account', icon: Icons.verified_outlined, onTileTap: (){context.router.push(ComingSoonRoute(),);},),
                  SizedBox(
                    height: 5,
                  ),
                  MoreButton(feature: 'Terms and Policies', icon: Icons.info_outline, onTileTap: () {context.router.push(TermsAndPoliciesRoute(),);},),
                  SizedBox(
                    height: 5,
                  ),
                  MoreButton(feature: 'About MM', icon: Icons.call_outlined, onTileTap: (){context.router.push(AboutMMRoute(),);},),
                  SizedBox(
                    height: 5,
                  ),
                  MoreButton(feature: 'Newsletter Subscription', icon: Icons.description_outlined, onTileTap: (){context.router.push(ComingSoonRoute(),);},),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
