import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/router/mm_router.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/categories/big_category_card.dart';
import 'package:mondaymorning/src/ui/components/categories/small_category_card.dart';

class MainCategoriesGrid extends StatelessWidget {
  const MainCategoriesGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            BigCategoryCard(
              image: 'assets/images/common_images/campus.svg',
              title: 'Campus',
              onCardTap: () {
                AutoRouter.of(context).push(
                  CategoryRoute(category: 'campus'),
                );
              },
            ),
            BigCategoryCard(
              image: 'assets/images/common_images/connect.svg',
              title: 'Connect',
              onCardTap: () {
                AutoRouter.of(context).push(
                  CategoryRoute(category: 'connect'),
                );
              },
            ),
            BigCategoryCard(
              image: 'assets/images/common_images/ddandcwc.svg',
              title: 'DD & CWC',
              onCardTap: () {
                AutoRouter.of(context).push(
                  CategoryRoute(category: 'ddcwc'),
                );
              },
            ),
          ],
        ),
        SizedBox(height: SizeConfig.safeBlockVertical! * 0.5),
        Row(
          children: [
            BigCategoryCard(
              image: 'assets/images/common_images/career.svg',
              title: 'Career',
              onCardTap: () {
                AutoRouter.of(context).push(
                  CategoryRoute(category: 'career'),
                );
              },
            ),
            BigCategoryCard(
              image: 'assets/images/common_images/alumni.svg',
              title: 'Alumni',
              onCardTap: () {
                AutoRouter.of(context).push(
                  CategoryRoute(category: 'alumni'),
                );
              },
            ),
            BigCategoryCard(
              image: 'assets/images/common_images/expression.svg',
              title: 'Expression',
              onCardTap: () {
                AutoRouter.of(context).push(
                  ExpressionRoute(),
                );
              },
            ),
          ],
        ),
        SizedBox(height: SizeConfig.safeBlockVertical!),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal! * 1.5,
          ),
          child: Row(
            children: [
              // TODO: use correct icons as per design requirements
              Expanded(
                flex: 1,
                child: SmallCategoryCard(
                  icon: Icons.calendar_today_outlined,
                  text: 'Witsdom',
                  onButtonTap: () {
                    AutoRouter.of(context).push(
                      ExpressionRoute(),
                    );
                  },
                ),
              ),
              SizedBox(width: SizeConfig.safeBlockVertical!),
              Expanded(
                flex: 1,
                child: SmallCategoryCard(
                  icon: Icons.pie_chart_outline,
                  text: 'Podcasts',
                  onButtonTap: () {
                    AutoRouter.of(context).push(
                      ExpressionRoute(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: SizeConfig.safeBlockVertical!),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal! * 1.5,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: SmallCategoryCard(
                  icon: Icons.calendar_today_outlined,
                  text: 'Photostory',
                  onButtonTap: () {
                    AutoRouter.of(context).push(
                      ExpressionRoute(),
                    );
                  },
                ),
              ),
              SizedBox(width: SizeConfig.safeBlockVertical!),
              Expanded(
                flex: 1,
                child: SmallCategoryCard(
                  icon: Icons.pie_chart_outline,
                  text: 'Photo Gallery',
                  onButtonTap: () {
                    AutoRouter.of(context).push(
                      ExpressionRoute(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
