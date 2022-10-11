import 'dart:async';

import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mondaymorning/src/services/navigation/router.gr.dart';
import 'package:mondaymorning/src/widgets/custom_icon_button.dart';
import 'package:mondaymorning/src/widgets/page_categories_card.dart';

/// Categories Page : Contains category cards and menu buttons
class CategoriesView extends StatefulWidget {
  /// Constructor for [CategoriesView]
  const CategoriesView({Key? key}) : super(key: key);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                PageCategoriesCard(image: 'assets/images/campus.png', title: 'Campus', onCardTap: () {context.router.push(CategoriesRouteView(categories: 'campus'),);},),
                PageCategoriesCard(image: 'assets/images/connect.png', title: 'Connect', onCardTap: () {context.router.push(CategoriesRouteView(categories: 'connect'),);},),
                PageCategoriesCard(image: 'assets/images/ddandcwc.png', title: 'DD & CWC', onCardTap: () {context.router.push(CategoriesRouteView(categories: 'ddcwc'),);},),
              ],
            ),
            SizedBox(height: 6),
            Row(
              children: [
                PageCategoriesCard(image: 'assets/images/career.png', title: 'Career', onCardTap: () {context.router.push(CategoriesRouteView(categories: 'career'),);},),
                PageCategoriesCard(image: 'assets/images/alumni.png', title: 'Alumni', onCardTap: () {context.router.push(CategoriesRouteView(categories: 'alumni'),);},),
                PageCategoriesCard(image: 'assets/images/expression.png', title: 'Expression', onCardTap: () {context.router.push(ComingSoonRoute(),);},),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    child: CustomIconButton(
                        icon: Icons.calendar_today_outlined,
                        text: 'Wisdom',
                        onButtonTap: () {context.router.push(ComingSoonRoute(),);},
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 5),
                    child: CustomIconButton(
                        icon: Icons.pie_chart_outline,
                        text: 'Podcasts',
                        onButtonTap: () {context.router.push(ComingSoonRoute(),);},
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    child: CustomIconButton(
                        icon: Icons.calendar_today_outlined,
                        text: 'Photojournalism',
                        onButtonTap: () {context.router.push(ComingSoonRoute(),);},
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 5),
                    child: CustomIconButton(
                        icon: Icons.pie_chart_outline, 
                        text: 'Photo Gallery', 
                        onButtonTap: () {context.router.push(ComingSoonRoute(),);},
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffF6D982),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 12),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffE15B62),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                            child: Text(
                              "Squiggles",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffF6F6F6),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Hon’ble Union Education Minister inaugurated the Golden Jubilee Building at NIT Rourkela on 19th October. The broadcast of the inauguration ceremony can be watched with the following link: https://youtu.be/CTi4VnwdGVI",
                            style: TextStyle(
                              fontSize: 15.6,
                              height: 1.35,
                              color: Color(0xff222222),
                            ),
                          ),
                        ),
                        SizedBox(height: 14),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
