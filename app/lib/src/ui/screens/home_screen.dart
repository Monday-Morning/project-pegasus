import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/states/home_page/home_page_data_type.dart';
import 'package:mondaymorning/src/ui/components/article/article_carousel.dart';
import 'package:mondaymorning/src/ui/components/home/search_app_bar.dart';

class HomeScreen extends StatelessWidget {
  final HomePageData data;

  const HomeScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(),
      body: Flex(
        direction: Axis.vertical,
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.safeBlockHorizontal! * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Text('data'),
                ArticleCarousel(featured: data.latestIssue.featured!),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
