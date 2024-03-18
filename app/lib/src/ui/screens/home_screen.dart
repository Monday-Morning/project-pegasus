import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/services/router/mm_router.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/states/landing_page/landing_page_data_type.dart';
import 'package:mondaymorning/src/ui/components/article/article_carousel.dart';
import 'package:mondaymorning/src/ui/components/article/small_article_card.dart';
import 'package:mondaymorning/src/ui/components/home/search_app_bar.dart';

@RoutePage<void>(name: 'HomeRoute')
class HomeScreen extends StatelessWidget {
  final LandingPageData data;

  const HomeScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    List<Article> articles = [
      ...?(data.latestIssue[0].articles?.where((element) =>
          (data.latestIssue[0].featured!.contains(element) ? false : true))),
      ...data.latestIssue[1].featured!
    ];

    if (articles.length > 6) articles = articles.sublist(0, 6);
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
                ArticleCarousel(featured: data.latestIssue[0].featured!),
                SizedBox(
                  height: SizeConfig.safeBlockHorizontal! * 5,
                ),
                ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) => SmallArticleCard(
                        article: articles[index],
                        onTileTap: () {
                          AutoRouter.of(context).push(
                            ArticleRoute(articleId: articles[index].id),
                          );
                        },
                      )),
                  separatorBuilder: ((context, index) => SizedBox(
                        height: SizeConfig.safeBlockVertical! * 0.2,
                      )),
                  itemCount: articles.length,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
