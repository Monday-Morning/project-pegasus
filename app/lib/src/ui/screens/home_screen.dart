import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/states/landing_page/landing_page_data_type.dart';
import 'package:mondaymorning/src/ui/components/article/article_carousel.dart';
import 'package:mondaymorning/src/ui/components/article/small_article_card.dart';
import 'package:mondaymorning/src/ui/components/home/search_app_bar.dart';
import 'package:mondaymorning/src/services/router/mm_router.gr.dart';

class HomeScreen extends StatelessWidget {
  final LandingPageData data;

  const HomeScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(),
      body: SingleChildScrollView(
        child: Flex(
          direction: Axis.vertical,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                ArticleCarousel(featured: data.latestIssue.featured!),
                SizedBox(
                  height: SizeConfig.safeBlockHorizontal! * 5,
                ),
                ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) => SmallArticleCard(
                      article: data.latestIssue.articles![index],
                      onTileTap: () {
                        AutoRouter.of(context).push(
                          ArticleRoute(
                              articleId: data.latestIssue.articles![index].id),
                        );
                      })),
                  separatorBuilder: ((context, index) => SizedBox(
                        height: SizeConfig.safeBlockVertical! * 1.5,
                      )),
                  itemCount: data.latestIssue.featured!.length,
                ),
                SizedBox(
                  height: SizeConfig.safeBlockHorizontal! * 5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
