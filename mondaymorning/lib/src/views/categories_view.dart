/// Categories Page : Contains category cards and menu buttons

import 'package:flutter/material.dart';
import 'package:mondaymorning/src/widgets/categories_card.dart';
import 'package:mondaymorning/src/widgets/custom_icon_button.dart';

class CategoriesView extends StatefulWidget {
  /// Constructor for [CategoriesView]
  const CategoriesView({Key? key}) : super(key: key);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              CategoriesCard(image: 'assets/images/campus.png', title: 'Campus', onCardTap: () {Navigator.pushNamed(context, '/campuspage');}),
              CategoriesCard(image: 'assets/images/connect.png', title: 'Connect', onCardTap: () {}),
              CategoriesCard(image: 'assets/images/ddandcwc.png', title: 'DD & CWC', onCardTap: () {}),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              CategoriesCard(image: 'assets/images/career.png', title: 'Career', onCardTap: () {}),
              CategoriesCard(image: 'assets/images/alumni.png', title: 'Alumni', onCardTap: () {}),
              CategoriesCard(image: 'assets/images/expression.png', title: 'Expression', onCardTap: () {}),
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
                      text: 'Wisdom'),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  child: CustomIconButton(
                      icon: Icons.pie_chart_outline, text: 'Podcasts'),
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
                      text: 'Photojournalism'),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 5),
                  child: CustomIconButton(
                      icon: Icons.pie_chart_outline, text: 'Photo Gallery'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
