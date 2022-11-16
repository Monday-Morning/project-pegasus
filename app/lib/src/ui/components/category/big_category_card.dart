import 'package:flutter/material.dart';
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
            clipBehavior: Clip.antiAlias,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                Theme.of(context).extension<REMSpace>()!.get(1)
              ),
            ),
            child: InkWell(
              onTap: onCardTap,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(
                      horizontal: SizeConfig.safeBlockHorizontal! * 2, 
                      vertical: SizeConfig.safeBlockVertical! * 2
                    ),
                child: Column(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: AspectRatio(
                          aspectRatio: 1 / 1,
                          child: Container(
                            constraints: const BoxConstraints.expand(),
                            child: Image.asset(
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
                            style: TextStyle(
                              fontSize: 15.4,
                              fontWeight: FontWeight.w600,
                            ),
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
