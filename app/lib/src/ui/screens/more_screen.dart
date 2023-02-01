import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mondaymorning/src/services/router/mm_router.dart';
import 'package:mondaymorning/src/services/themes/mm_colors.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/states/app_config/app_config_provider.dart';
import 'package:mondaymorning/src/ui/components/more/widgets/tile_widget.dart';

class MoreCard {
  final String feature;
  final IconData icon;
  final PageRouteInfo<dynamic> route;
  MoreCard(this.feature, this.icon, this.route);
}

/// More Screen of the app.
class MoreScreen extends ConsumerWidget {
  final List<MoreCard> data = [
    MoreCard('Bookmarks', Icons.bookmark_border_outlined, ComingSoonRoute()),
    MoreCard('Password Change', Icons.password_outlined, ComingSoonRoute()),
    MoreCard('Verify Account', Icons.verified_outlined, ComingSoonRoute()),
    MoreCard('Terms and Policies', Icons.info_outline, TermsRoute()),
    MoreCard('About MM', Icons.call_outlined, AboutRoute()),
    MoreCard('Newsletter Subscription', Icons.description_outlined,
        ComingSoonRoute()),
  ];

  MoreScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'More',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal! * 0.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Theme.of(context).extension<REMSpace>()!.get(1),
                  ),
                  border: Border.all(color: MMColors.kDividerColor, width: 1),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.safeBlockHorizontal!,
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.safeBlockVertical! * 0.1,
                        horizontal: SizeConfig.safeBlockHorizontal! * 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: SizeConfig.safeBlockHorizontal!),
                              Icon(Icons.dark_mode_outlined,
                                  size: SizeConfig.safeBlockHorizontal! * 6),
                              SizedBox(
                                  width: SizeConfig.safeBlockHorizontal! * 3),
                              Text(
                                'Dark Mode',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                          Switch(
                            value: Theme.of(context).brightness ==
                                Brightness.light,
                            onChanged: (enabled) {
                              if (enabled) {
                                ref
                                    .read(appConfigProviderProvider.notifier)
                                    .toggleAppTheme(ThemeMode.light);
                              } else {
                                ref
                                    .read(appConfigProviderProvider.notifier)
                                    .toggleAppTheme(ThemeMode.dark);
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Divider(
                      height: 1.0,
                      color: MMColors.kDividerColor,
                    ),
                    ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return TileWidget(
                          feature: data[index].feature,
                          icon: data[index].icon,
                          onTileTap: () {
                            context.router.push(
                              data[index].route,
                            );
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          height: 1.0,
                          color: MMColors.kDividerColor,
                        );
                      },
                      itemCount: data.length,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
