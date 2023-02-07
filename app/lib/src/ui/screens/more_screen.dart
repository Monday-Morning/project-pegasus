import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mondaymorning/src/services/router/mm_router.dart';
import 'package:mondaymorning/src/services/themes/mm_colors.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/states/app_config/app_config_provider.dart';
import 'package:mondaymorning/src/ui/components/more/widgets/tile_widget.dart';
import 'package:toggle_switch/toggle_switch.dart';

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
            children: [
              ToggleSwitch(
                minWidth: SizeConfig.safeBlockHorizontal! * 100,
                minHeight: SizeConfig.safeBlockVertical! * 5,
                initialLabelIndex:
                    Theme.of(context).brightness == Brightness.light
                        ? 1
                        : Theme.of(context).brightness == Brightness.dark
                            ? 2
                            : 0,
                cornerRadius: 10,
                activeFgColor: Theme.of(context).backgroundColor,
                inactiveBgColor: Theme.of(context).backgroundColor,
                inactiveFgColor: Theme.of(context).textTheme.bodyText1!.color,
                totalSwitches: 3,
                dividerColor: Theme.of(context).dividerColor,
                labels: ['System', 'Light', 'Dark'],
                icons: [
                  Icons.settings_brightness_outlined,
                  Icons.light_mode_outlined,
                  Icons.dark_mode_outlined
                ],
                iconSize: SizeConfig.safeBlockHorizontal! * 6,
                borderWidth: 1.0,
                borderColor: [Theme.of(context).dividerColor],
                activeBgColors: [
                  [Theme.of(context).textTheme.bodyText1!.color!],
                  [Theme.of(context).textTheme.bodyText1!.color!],
                  [Theme.of(context).textTheme.bodyText1!.color!]
                ],
                onToggle: (index) {
                  if (index == 0) {
                    ref
                        .read(appConfigProviderProvider.notifier)
                        .toggleAppTheme(ThemeMode.system);
                  } else if (index == 1) {
                    ref
                        .read(appConfigProviderProvider.notifier)
                        .toggleAppTheme(ThemeMode.light);
                  } else if (index == 2) {
                    ref
                        .read(appConfigProviderProvider.notifier)
                        .toggleAppTheme(ThemeMode.dark);
                  }
                },
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal! * 0.5,
                  vertical: SizeConfig.safeBlockVertical!,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Theme.of(context).extension<REMSpace>()!.get(1),
                  ),
                  border: Border.all(
                      color: Theme.of(context).dividerColor, width: 1),
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
                            value:
                                Theme.of(context).brightness == Brightness.dark,
                            onChanged: (enabled) {
                              if (enabled) {
                                ref
                                    .read(appConfigProviderProvider.notifier)
                                    .toggleAppTheme(ThemeMode.dark);
                              } else {
                                ref
                                    .read(appConfigProviderProvider.notifier)
                                    .toggleAppTheme(ThemeMode.light);
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
                      color: Theme.of(context).dividerColor,
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
                          color: Theme.of(context).dividerColor,
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
