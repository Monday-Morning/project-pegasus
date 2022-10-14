import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/providers/providers.dart';
import 'package:mondaymorning/src/services/navigation/router.gr.dart';
import 'package:mondaymorning/src/themes/colors.dart';
import 'package:mondaymorning/src/widgets/more_button.dart';

class MoreCard {
  final String feature;
  final IconData icon;
  final PageRouteInfo<dynamic> route;
  MoreCard(@required this.feature, @required this.icon, @required this.route);
}

/// Home View widget of the app.
class MoreView extends ConsumerWidget {
  List<MoreCard> data = [
    MoreCard('Bookmarks', Icons.bookmark_border_outlined, ComingSoonRoute()),
    MoreCard('Password Change', Icons.password_outlined, ComingSoonRoute()),
    MoreCard('Verify Account', Icons.verified_outlined, ComingSoonRoute()),
    MoreCard('Terms and Policies', Icons.info_outline, TermsAndPoliciesRoute()),
    MoreCard('About MM', Icons.call_outlined, AboutMMRoute()),
    MoreCard('Newsletter Subscription', Icons.description_outlined, ComingSoonRoute()),
  ];

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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.kGrey70, width: 1)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.dark_mode_outlined, size: 27),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width*0.5,
                              height: 24,
                              child: Text(
                                ' Dark Mode',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
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
                    Divider(
                      height: 1.0,
                      color: AppColors.kGrey70,
                    ),
                    ListView.separated(
                      scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context,index){
                      return MoreButton(feature: data[index].feature, icon: data[index].icon, onTileTap: (){context.router.push(data[index].route,);},);
                    }, separatorBuilder: (context,index){
                      return Divider(
                        height: 1.0,
                        color: AppColors.kGrey70,
                      );
                    }, itemCount: data.length),
            ],
          ),
              ),
          ]
        ),
      ),
    )
    );
  }
}
