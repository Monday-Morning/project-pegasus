import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';

class BigCategoryCard extends StatelessWidget {
  final String image;
  final String title;
  final void Function() onCardTap;

  const BigCategoryCard({
    Key? key,
    required this.image,
    required this.title,
    required this.onCardTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 118 / 168,
          child: Card(
            surfaceTintColor: Theme.of(context).cardTheme.color,
            clipBehavior: Clip.antiAlias,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  Theme.of(context).extension<REMSpace>()!.get(1)),
            ),
            child: InkWell(
              highlightColor: Color(0x413ea2b6),
              onTap: onCardTap,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 2,
                    vertical: SizeConfig.safeBlockVertical! * 2),
                child: Column(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: AspectRatio(
                          aspectRatio: 1 / 1,
                          child: Container(
                            constraints: const BoxConstraints.expand(),
                            child: SvgPicture.asset(
                              image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: SizeConfig.safeBlockVertical! * 0.5),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: SizeConfig.safeBlockHorizontal! * 20,
                        height: SizeConfig.safeBlockVertical! * 3,
                        child: Center(
                          child: Text(
                            title,
                            style: Theme.of(context).textTheme.headline3,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
