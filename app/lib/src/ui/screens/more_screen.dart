import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/states/app_config/app_config_provider.dart';
import 'package:mondaymorning/src/ui/components/more/widgets/dropdown_tile_widget.dart';
import 'package:mondaymorning/src/ui/components/more/widgets/tile_widget.dart';

import '../../services/router/mm_router.gr.dart';

class MoreCard {
  final String feature;
  final IconData icon;
  final PageRouteInfo<dynamic> route;
  MoreCard(this.feature, this.icon, this.route);
}

/// More Screen of the app.
@RoutePage<dynamic>(name: 'MoreRoute')
class MoreScreen extends ConsumerWidget {
  // TODO: refactor this to contain list of widgets instead of a morecard class. Iterate and render elements directly.
  final List<MoreCard> data = [
    MoreCard('Bookmarks', Icons.bookmark_border_outlined, ExpressionRoute()),
    MoreCard('Password Change', Icons.password_outlined, ExpressionRoute()),
    MoreCard('Verify Account', Icons.verified_outlined, ExpressionRoute()),
    MoreCard('Terms and Policies', Icons.info_outline, TermsRoute()),
    MoreCard('About MM', Icons.call_outlined, AboutRoute()),
    MoreCard('Newsletter Subscription', Icons.description_outlined,
        ExpressionRoute()),
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
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          body: Column(
            children: [
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
                    DropdownTileWidget(
                      feature: 'Theme Mode',
                      icon: Icons.dark_mode_outlined,
                      dropdownItems: <DropdownItem>[
                        DropdownItem(
                          feature: 'System',
                          icon: Icons.settings_brightness_outlined,
                          actionIcon: ref
                                      .read(appConfigProviderProvider.notifier)
                                      .appConfig
                                      ?.themeMode !=
                                  ThemeMode.system
                              ? Icons.radio_button_off_outlined
                              : Icons.radio_button_on_outlined,
                          onTileTap: () {
                            ref
                                .read(appConfigProviderProvider.notifier)
                                .toggleAppTheme(ThemeMode.system);
                          },
                        ),
                        DropdownItem(
                          feature: 'Light',
                          icon: Icons.light_mode_outlined,
                          actionIcon: ref
                                      .read(appConfigProviderProvider.notifier)
                                      .appConfig
                                      ?.themeMode !=
                                  ThemeMode.light
                              ? Icons.radio_button_off_outlined
                              : Icons.radio_button_on_outlined,
                          onTileTap: () {
                            ref
                                .read(appConfigProviderProvider.notifier)
                                .toggleAppTheme(ThemeMode.light);
                          },
                        ),
                        DropdownItem(
                          feature: 'Dark',
                          icon: Icons.dark_mode_outlined,
                          actionIcon: ref
                                      .read(appConfigProviderProvider.notifier)
                                      .appConfig
                                      ?.themeMode !=
                                  ThemeMode.dark
                              ? Icons.radio_button_off_outlined
                              : Icons.radio_button_on_outlined,
                          onTileTap: () {
                            ref
                                .read(appConfigProviderProvider.notifier)
                                .toggleAppTheme(ThemeMode.dark);
                          },
                        ),
                      ],
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
