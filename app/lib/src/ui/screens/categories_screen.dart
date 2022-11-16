import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/squiggle/squiggle.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/article/markdown_text.dart';
import 'package:mondaymorning/src/ui/components/category/big_category_card.dart';
import 'package:mondaymorning/src/ui/components/category/small_category_card.dart';
import 'package:mondaymorning/src/services/router/mm_router.gr.dart';

class CategoriesScreen extends StatelessWidget {
  final Squiggle squiggle;

  const CategoriesScreen({super.key, required this.squiggle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        title: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width * 0.6,
                  margin: EdgeInsets.only(bottom: 6.0),
                  color: Theme.of(context).primaryColor,
                )
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.safeBlockHorizontal! * 3),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.safeBlockVertical!),
              Row(
                children: [
                  BigCategoryCard(
                    image: 'assets/images/light/campus.png',
                    title: 'Campus',
                    onCardTap: () {
                      AutoRouter.of(context).push(
                        CategoryRoute(category: 'campus'),
                      );
                    },
                  ),
                  BigCategoryCard(
                    image: 'assets/images/light/connect.png',
                    title: 'Connect',
                    onCardTap: () {
                      AutoRouter.of(context).push(
                        CategoryRoute(category: 'connect'),
                      );
                    },
                  ),
                  BigCategoryCard(
                    image: 'assets/images/light/ddandcwc.png',
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
                    image: 'assets/images/light/career.png',
                    title: 'Career',
                    onCardTap: () {
                      AutoRouter.of(context).push(
                        CategoryRoute(category: 'career'),
                      );
                    },
                  ),
                  BigCategoryCard(
                    image: 'assets/images/light/alumni.png',
                    title: 'Alumni',
                    onCardTap: () {
                      AutoRouter.of(context).push(
                        CategoryRoute(category: 'alumni'),
                      );
                    },
                  ),
                  BigCategoryCard(
                    image: 'assets/images/light/expression.png',
                    title: 'Expression',
                    onCardTap: () {
                      // context.router.push(
                      //   ComingSoonRoute(),
                      // );
                    },
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 1.5),
                child: Column(
                  children: [
                    SizedBox(height: SizeConfig.safeBlockVertical!),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SmallCategoryCard(
                            icon: Icons.calendar_today_outlined,
                            text: 'Wisdom',
                            onButtonTap: () {
                              // context.router.push(
                              //   ComingSoonRoute(),
                              // );
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
                              // context.router.push(
                              //   ComingSoonRoute(),
                              // );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: SizeConfig.safeBlockVertical!),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SmallCategoryCard(
                            icon: Icons.calendar_today_outlined,
                            text: 'Photojournalism',
                            onButtonTap: () {
                              // context.router.push(
                              //   ComingSoonRoute(),
                              // );
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
                              // context.router.push(
                              //   ComingSoonRoute(),
                              // );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: SizeConfig.safeBlockVertical! * 1.5),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 1.5),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.safeBlockHorizontal! * 1.5,
                      vertical: SizeConfig.safeBlockVertical! * 1.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        Theme.of(context).extension<REMSpace>()!.get(1)),
                    color: Color(0xffF6D982),
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              Theme.of(context).extension<REMSpace>()!.get(1)),
                          color: Color(0xffE15B62),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.safeBlockHorizontal! * 3.5,
                              vertical: SizeConfig.safeBlockVertical! * 0.5),
                          child: Text(
                            'Squiggles',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffF6F6F6),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: SizeConfig.safeBlockVertical!),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.safeBlockHorizontal! * 2),
                        child: MarkdownText(text: squiggle.content),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.safeBlockHorizontal!),
            ],
          ),
        ),
      ),
    );
  }
}
