import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';

class DropdownItem {
  final String feature;
  final IconData icon;
  final IconData actionIcon;
  final void Function() onTileTap;

  DropdownItem({
    required this.feature,
    required this.icon,
    required this.actionIcon,
    required this.onTileTap,
  });
}

class DropdownTileWidget extends HookConsumerWidget {
  final String feature;
  final IconData icon;
  final List<DropdownItem> dropdownItems;

  const DropdownTileWidget({
    super.key,
    required this.feature,
    required this.icon,
    required this.dropdownItems,
  });

  double getCurvedValue(double t) {
    return Curves.easeInOutSine.transform((t + 1) / 2);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 200),
      initialValue: -1,
      lowerBound: -1,
      upperBound: 1,
    );

    useAnimation(animationController);

    return AnimatedSize(
      duration: Duration(milliseconds: 500),
      reverseDuration: Duration(milliseconds: 200),
      curve: Curves.easeInOutSine,
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              if (animationController.isCompleted) {
                animationController.reverse();
              } else {
                animationController.forward();
              }
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal!),
              padding: EdgeInsets.symmetric(
                vertical: SizeConfig.safeBlockVertical!,
                horizontal: SizeConfig.safeBlockHorizontal! * 2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: SizeConfig.safeBlockHorizontal!),
                      Icon(icon, size: SizeConfig.safeBlockHorizontal! * 6),
                      SizedBox(width: SizeConfig.safeBlockHorizontal! * 3),
                      Text(
                        feature,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  Transform.rotate(
                    angle: (getCurvedValue(animationController.value) * 90) *
                        (pi / 180),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: SizeConfig.safeBlockHorizontal! * 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (animationController.value > -1)
            Opacity(
              opacity: getCurvedValue(animationController.value),
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal!),
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.safeBlockVertical! * 0,
                  horizontal: SizeConfig.safeBlockHorizontal! * 2,
                ),
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: dropdownItems[index].onTileTap,
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: SizeConfig.safeBlockHorizontal!),
                        padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.safeBlockVertical!,
                          horizontal: SizeConfig.safeBlockHorizontal! * 2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    width: SizeConfig.safeBlockHorizontal!),
                                Icon(dropdownItems[index].icon,
                                    size: SizeConfig.safeBlockHorizontal! * 6),
                                SizedBox(
                                    width: SizeConfig.safeBlockHorizontal! * 3),
                                Text(
                                  dropdownItems[index].feature,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                            Icon(
                              dropdownItems[index].actionIcon,
                              size: SizeConfig.safeBlockHorizontal! * 5,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 1.0,
                      color: Theme.of(context).dividerColor,
                    );
                  },
                  itemCount: dropdownItems.length,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
