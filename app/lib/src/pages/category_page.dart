import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/category/big_category_card.dart';
import 'package:mondaymorning/src/ui/components/category/small_category_card.dart';

/// Categories View : Contains category cards and menu buttons
class CategoriesView extends StatefulWidget {
  /// Constructor for [CategoriesView]
  const CategoriesView({Key? key}) : super(key: key);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        title: Column(
          children: [
            SizedBox(
              height: SizeConfig.safeBlockVertical! * 2,
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
                    color: Color(0xFF006DCC),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.safeBlockHorizontal!,
                ),
                Container(
                  height: 2,
                  width: SizeConfig.safeBlockHorizontal! * 60,
                  margin:
                      EdgeInsets.only(bottom: SizeConfig.safeBlockVertical!),
                  color: Color(0xFF006DCC),
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
                      // context.router.push(
                      //   CategoriesRouteView(categories: 'campus'),
                      // );
                    },
                  ),
                  BigCategoryCard(
                    image: 'assets/images/light/connect.png',
                    title: 'Connect',
                    onCardTap: () {
                      // context.router.push(
                      //   CategoriesRouteView(categories: 'connect'),
                      // );
                    },
                  ),
                  BigCategoryCard(
                    image: 'assets/images/light/ddandcwc.png',
                    title: 'DD & CWC',
                    onCardTap: () {
                      // context.router.push(
                      //   CategoriesRouteView(categories: 'ddcwc'),
                      // );
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
                      // context.router.push(
                      //   CategoriesRouteView(categories: 'career'),
                      // );
                    },
                  ),
                  BigCategoryCard(
                    image: 'assets/images/light/alumni.png',
                    title: 'Alumni',
                    onCardTap: () {
                      // context.router.push(
                      //   CategoriesRouteView(categories: 'alumni'),
                      // );
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
                            Theme.of(context).extension<REMSpace>()!.get(1)
                          ),
                          color: Color(0xffE15B62),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.safeBlockHorizontal! * 3.5, vertical: SizeConfig.safeBlockVertical! * 0.5),
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
                        padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal! * 2),
                        child: Text(
                          'Hon’ble Union Education Minister inaugurated the Golden Jubilee Building at NIT Rourkela on 19th October. The broadcast of the inauguration ceremony can be watched with the following link: https://youtu.be/CTi4VnwdGVI',
                          style: TextStyle(
                            fontSize: 15.6,
                            height: 1.35,
                            color: Color(0xff222222),
                          ),
                        ),
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
